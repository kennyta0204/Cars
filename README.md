# Used (and eventually New) Cars Recommender System

### Project Description
The purpose of this project is to create a car recommender system based on a user's criteria.
The data is stored in a local Postgresql server and can be duplicated by following the codes.

### Dependencies

    Python 3.10.4
    Jupyter Notebook 6.4.11
    psycopg 2.9.6
    pandas 1.5.3
    sqlalchemy 2.0.15
    Flask 2.3.2
    Flask-SQLAlchemy 3.0.3

### Data
Data is aggregated by myself though various sources (wikipedia, car and driver, motor trend, etc.). Due to the discrepancies in sources, hp (horsepower) and torque may vary slightly from true, marketed values. The dataset is not complete and at its current state, primarily contains older cars that appeal to auto enthusiasts. (Do you realize how many different generation/editions of honda civics and porsche 911s with different specs are there? Too many lol).

Steps to clone the dataset:

    1. Download Postgresql
    2. Create Database named "cars"
    3. Open psql_auth.py and input your own password
    3. Run psql_init.py to setup database ($ python psql_init 'sql_files/')

Alternatively if you would like to have the dataset on a different SQL database, just download the sql files and execute them in order.

Future updates:

    - I plan to add much more cars/editions into the dataset
    - I hope to extract and add average used price as it would serve as an important search condition; however currently I have no means to do so (legally lol).

### Recommender System
Recommendations are made for each vehicle using scikit-learn's nearest neighbor. Due to the difficulty in defining similarity between two cars, I created a custom distance metric to compute similarity between vehicles. The fuction computes the Euclidean distance between hp and torque, and divides that distance by a ratio representing the proportion of similar binary features two vehicles share (turbo, super, two_door, manual, automatic, fwd, rwd, awd). In other words, the Euclidean distance is penalized for each binary variable two vehicles do not have in common. 

For instance, if the Euclidean distance between car A and B is 20 and they share the exact same values for each binary variable, then the ratio would be 1 and the distance between car A and car B would be 20/1, or 20. However, if car C also have a Euclidean Distance of 20 with car A and share similar binary features except car C is turbocharged (turbo = 1) and only offered in manual (automatic = 0), and car A is not turbochared (turbo = 0) and offered in both manual and automatic (automatic = 1), then the ratio for these two cars would be 6/8 or 0.75 (6 representing similar features and 8 representing total features). The distance between car A and car C would be 20/0.75, or 26.67. Although car B and car C have similar Euclidean distances measuring hp and torque differences to car A, car C is more dissimilar to car A compared to car B due to differences in the binary features.

### Interactive App
Once you have the postgres database stored locally and have all the python files, run the dvc pipeline (> dvc repro) to get train_data.csv and model_knn.pkl. The pipeline will also run sim_cars.py which creates(or recreate if more cars are added into the db) a table in the postgres database, where the id is the car_id of each vehicle and three columns representing the car_id of the three most similar vehicle. This table is neccessary for the recommendation system.

Finally, run the app. (> python app.py)

The app serves as a front-end interface for users to send search queries to the database. No knowledge of SQL is required. Here is a [YouTube video](https://www.youtube.com/watch?v=Ok0_RiQ5DlM) of how the app should look: 