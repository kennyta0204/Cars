import pandas as pd
import numpy as np
import psycopg2
import sqlalchemy
from sqlalchemy.sql import text
import psql_auth

def get_data():

    sql_auth = psql_auth.secrets()
    alchemy_auth = psql_auth.alchemy(sql_auth)

    url = alchemy_auth
    engine = sqlalchemy.create_engine(url)

    sql = '''SELECT M.id, make, name, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive
        FROM car_models AS M JOIN car_name AS N ON M.name_id = N.id JOIN car_make as MA ON N.make_id= MA.id;'''

    with engine.connect() as connn:
        query = connn.execute(text(sql))
    
    df = pd.DataFrame(query.fetchall())

    df['max_year'] = [y if y <9999 else 2023 for y in df['max_year']]
    df['turbo'] = [1 if a == 'turbo' else 0 for a in df.aspiration]
    df['super'] = [1 if a == 'supercharged' else 0 for a in df.aspiration]
    df['two_door'] = [1 if door == 2 else 0 for door in df.door]
    df['man'] = [1 if t == 'man' or t=='both' else 0 for t in df.transmission]
    df['auto'] = [1 if t == 'auto' or t=='both' else 0 for t in df.transmission]
    df['fwd'] = [1 if d == 'fwd' else 0 for d in df.drive]
    df['rwd'] = [1 if d == 'rwd' else 0 for d in df.drive]
    df['awd'] = [1 if d == 'awd' or d == '4wd' else 0 for d in df.drive]

    return df

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('output', help= "name of output file (csv)")
    args = parser.parse_args()
    save_path = "data/" + args.output

    get_data().to_csv(save_path, index=False)


