import psycopg2
import psql_auth
import os

def initialize_psql_db(root_dir = 'sql_files/'):
    sql_auth = psql_auth.secrets()

    conn = psycopg2.connect(
        host = sql_auth['host'],
        database = sql_auth['database'],
        port = sql_auth['port'],
        user = sql_auth['user'],
        password= sql_auth['pass'])

    cur = conn.cursor()

    for subdir, dirs, files in os.walk(root_dir):
        for file in files:
            path = root_dir+file
            try:
                cur.execute(open(path, 'r').read())
                print(f'successfully ran {file}')
                conn.commit()
            except:
                print(f'Failed to run {file}')

    cur.close()
    conn.close()

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('input', default='sql_files/', help = 'Root directory of SQL files')
    args = parser.parse_args()

    initialize_psql_db(args.input)


