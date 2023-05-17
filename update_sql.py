import pandas as pd
import psycopg2
import sqlalchemy
from sqlalchemy.sql import text
import tkinter as tk
from tkinter import simpledialog

url = 'postgresql+psycopg2://postgres:Ken1099033@localhost:5432/cars'
engine = sqlalchemy.create_engine(url)

sql = '''SELECT make FROM car_make;'''
with engine.connect() as conn:
    query = conn.execute(text(sql))
make_lst = [x[0] for x in query.fetchall()]

sql = '''SELECT name FROM car_name;'''
with engine.connect() as conn:
    query = conn.execute(text(sql))
name_lst = [x[0] for x in query.fetchall()]

df = pd.read_csv('data/clean_update_list.csv')
df.make =df.make.str.upper()

for make in df.make.unique():
    if make not in make_lst:
        ROOT = tk.Tk()
        ROOT.withdraw()
        nationality = simpledialog.askstring(title="NEW CAR MAKE DISCOVERED!",
                                          prompt="What nationality is " +make+ "?:")
        sql = f'''INSERT INTO car_make (make, country) VALUES ({make}, {str.upper(nationality)})'''
        print(sql)


# update_df = pd.read_csv('data/clean_update_list.csv')

# conn = psycopg2.connect(
#     host = "localhost",
#     database = "cars",
#     port = "5432",
#     user = "postgres",
#     password= "Ken1099033") # INPUT PW HERE

# cur = conn.cursor()

# try:
#     sql= "SELECT DISTINCT make FROM car_make"

#     make_df = pd.read_sql_query(sql, conn)
#     print(cur.fetchall())
# except:
#     print('error generating distict makes')

# try:    
#     sql = "SELECT name FROM car_name"
#     car_name_df = pd.read_sql_query(sql, conn)
#     print(car_name_df)
# except:
#     print('error generating distict car names')
# for _, car in update_df.iterrows():


# print(update_df)