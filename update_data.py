import pandas as pd
import psycopg2
import sqlalchemy
from sqlalchemy.sql import text
import tkinter as tk
from tkinter import simpledialog
from datetime import date
import os
import psql_auth

def update(input_file):
    sql_auth = psql_auth.secrets()
    alchemy_auth = psql_auth.alchemy(sql_auth)

    conn = psycopg2.connect(
        host = sql_auth['host'],
        database = sql_auth['database'],
        port = sql_auth['port'],
        user = sql_auth['user'],
        password= sql_auth['pass'])

    cur = conn.cursor()

    url = alchemy_auth
    engine = sqlalchemy.create_engine(url)

    sql = '''SELECT * FROM car_make;'''
    with engine.connect() as connn:
        query = connn.execute(text(sql))
    make_df = pd.DataFrame(query.fetchall())

    sql = '''SELECT * FROM car_name;'''
    with engine.connect() as connn:
        query = connn.execute(text(sql))
    name_df = pd.DataFrame(query.fetchall())

    f = open(f'sql_files/update_{str(date.today())}.sql', 'a')

    df = pd.read_csv(input_file)
    df.make =df.make.str.upper()

    # Update car_make
    for make in df.make.unique():
        if make not in list(make_df.make):
            ROOT = tk.Tk()
            ROOT.withdraw()
            nationality = simpledialog.askstring(title="NEW CAR MAKE DISCOVERED!",
                prompt=f"What nationality is {make}?:")
            sql = f'''INSERT INTO car_make (make, country) VALUES ('{make}', '{str.upper(nationality)}');\n'''
            try:
                cur.execute(sql)
                f.write(sql)
                conn.commit()
            except:
                print('error inserting make into car_make')

    # Update make_df
    sql = '''SELECT * FROM car_make;'''          
    with engine.connect() as connn:
        query = connn.execute(text(sql))
    make_df = pd.DataFrame(query.fetchall())

    # Update car_name
    df_w_make = df.merge(make_df.rename(columns= {'id':'make_id'}), on='make')
    name_to_makeid = {row['name']: row['make_id'] for _, row in df_w_make.iterrows()}

    for name in df_w_make.name.unique():
        if name not in list(name_df.name):
            sql = f'''INSERT INTO car_name (name, make_id) VALUES ('{name}', {name_to_makeid[name]});'''
            try:
                cur.execute(sql)
                f.write(sql)
                f.write('\n')
                conn.commit()
            except:
                print('error inserting row into car_name')

    # Update name_df
    sql = '''SELECT * FROM car_name;'''
    with engine.connect() as connn:
        query = connn.execute(text(sql))
    name_df = pd.DataFrame(query.fetchall())

    # Update car_models
    df_complete = df_w_make.merge(name_df.rename(columns={'id':'name_id'}), on=['name','make_id'])
    for i, r in df_complete.iterrows():
        sql = f'''INSERT INTO car_models (name_id, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive) 
            VALUES ({r.name_id},'{r.edition}',{r.min_year},{r.max_year},{r.hp},{r.torque},'{r.body}',{r.door},{r.cylinder},{r.displacement},'{r.aspiration}','{r.transmission}','{r.drive}');'''
        try:
            cur.execute(sql)
            df.drop([i], inplace= True)
            f.write(sql)
            f.write('\n')
            conn.commit()
        except:
            print('error inserting row to car_models')

    # Delete clean_update_list and remove rows added from cars_update list
    df.to_csv('data/cars_update_list.csv', index= False)

    if os.path.isfile('data/clean_update_list.csv'):
        try:
            os.remove('data/clean_update_list.csv')
            print('successfully removed file')
        except:
            print('failed to remove file')

    print('Data successfully Updated')
        
    # End Session
    f.close()
    cur.close()
    conn.close()


if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('input', help = 'Cleaned car update file (CSV)')
    args = parser.parse_args()

    update(args.input)