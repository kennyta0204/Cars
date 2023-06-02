import pickle
from train import mydist
import pandas as pd
import numpy as np

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
    
    return sim_cars
    

if __name__ =='__main__':
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument('model_input', help="nearest neighbor model (pickle)")
    parser.add_argument('data_input', help='data of all cars (csv)')
    args = parser.parse_args()

    with open('sim_cars.pkl', 'wb') as handle:
        pickle.dump(get_sim_cars(args.model_input, args.data_input), handle)


