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

    sql = '''SELECT make, name, edition, min_year, max_year, hp, torque, body, door, cylinder, displacement, aspiration, transmission, drive
        FROM car_models AS M JOIN car_name AS N ON M.name_id = N.id JOIN car_make as MA ON N.make_id= MA.id;'''

    with engine.connect() as connn:
        query = connn.execute(text(sql))

    return pd.DataFrame(query.fetchall())

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('output', help= "name of output file (csv)")
    args = parser.parse_args()
    save_path = "data/" + args.output

    get_data().to_csv(save_path)


