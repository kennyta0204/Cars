import pickle
from train import mydist
import pandas as pd
import psycopg2
import psql_auth

def get_sim_cars(model, data):

    with open(model, 'rb') as f:
        model_knn = pickle.load(f)
        f.close()

    df = pd.read_csv(data)

    sim_cars = {}

    for idx, car in df[['hp', 'torque', 'turbo', 'super', 'two_door', 'man', 'auto', 'fwd', 'rwd', 'awd']].iterrows():
        similar_cars = model_knn.kneighbors([car.values])[1][0]
        sim_car_id = []
        for i in similar_cars[1:4]:
            sim_car_id.append(df.iloc[i].id)
        sim_cars[df.iloc[idx].id] = sim_car_id

    sql_auth = psql_auth.secrets()

    conn = psycopg2.connect(
        host = sql_auth['host'],
        database = sql_auth['database'],
        port = sql_auth['port'],
        user = sql_auth['user'],
        password= sql_auth['pass'])

    cur = conn.cursor()

    f = open("sql_files/sim_cars.sql", "w")

    sql = "DROP TABLE IF EXISTS sim_cars;"
    try:
        cur.execute(sql)
        f.write(sql)
        f.write('\n')
    except:
        print('error dropping sim_cars')

    sql = "CREATE TABLE IF NOT EXISTS sim_cars (id INTEGER PRIMARY KEY, sim1_id INTEGER, sim2_id INTEGER, sim3_id INTEGER);"
    try:
        cur.execute(sql)
        f.write(sql)
        f.write('\n')
        conn.commit()
    except:
        print('error creating sim_cars')

    for c_id, sim_ids in sim_cars.items():
        sql = f"INSERT INTO sim_cars (id, sim1_id, sim2_id, sim3_id) VALUES ({c_id}, {sim_ids[0]}, {sim_ids[1]}, {sim_ids[2]});"
        try:
            cur.execute(sql)
            f.write(sql)
            f.write('\n')
        except:
            print('error inserting rows')

    conn.commit()

    f.close()
    cur.close()
    conn.close()
    
    return sim_cars
    

if __name__ =='__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('model_input', help="nearest neighbor model (pickle)")
    parser.add_argument('data_input', help='data of all cars (csv)')
    args = parser.parse_args()

    get_sim_cars(args.model_input, args.data_input)


