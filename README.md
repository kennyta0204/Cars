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
Working Progress... As of now you can run sql commands to view the dataset.

### Jupyter Notebooks
These can be ignored. They serve as my working papers for testing codes. They are not needed for the database or app to work.

### Interactive App
The app serves as a front-end interface for users (with no knowledge of SQL) to send search queries to the database via sql alchemy.