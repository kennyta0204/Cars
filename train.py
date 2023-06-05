import pandas as pd
import numpy as np
from sqlalchemy.sql import text
from sklearn.neighbors import NearestNeighbors
from sklearn.preprocessing import StandardScaler, MinMaxScaler
import pickle

def mydist(x, y):
    x_perf = x[:2]
    y_perf = y[:2]
    x_feats = x[2:]
    y_feats = y[2:]
    
    perf = np.sqrt(np.sum((x_perf-y_perf)**2))
    feats = (len(x_feats) - np.sum((x_feats-y_feats)**2)) / len(x_feats)
    dist = perf/feats

    return dist


def train(data):

    df = pd.read_csv(data, index_col=False)
    X = df[['hp','torque','turbo', 'super', 'two_door','man','auto','fwd','rwd','awd']].to_numpy()

    model_knn =NearestNeighbors(n_neighbors= 5, algorithm= 'ball_tree', metric= mydist)
    model_knn.fit(X)

    return model_knn


if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('input', help= 'Car data file (csv)')
    parser.add_argument('output', help="Name of model (pkl)")
    args =parser.parse_args()

    with open(args.output, 'wb') as handle:
        pickle.dump(train(args.input), handle)