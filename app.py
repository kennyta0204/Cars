import psycopg2
from flask import Flask, render_template, request, url_for, redirect
from flask_sqlalchemy import SQLAlchemy
import psql_auth

app = Flask(__name__)

def get_db_connection():
    sql_auth = psql_auth.secrets()

    conn = psycopg2.connect(
        host = sql_auth['host'],
        database = sql_auth['database'],
        port = sql_auth['port'],
        user = sql_auth['user'],
        password= sql_auth['pass'])
    return conn


@app.route("/")

def home():
    return render_template('home_pg.html')

@app.route("/all_cars/")
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT make, name, edition FROM car_models AS M JOIN car_name AS N ON M.name_id = N.id JOIN car_make AS MA ON MA.id = N.make_id;')
    cars = cur.fetchall()
    cur.close()
    conn.close()
    return render_template('index.html', cars = cars)


@app.route('/search/', methods=('GET', 'POST'))
def search():
    if request.method == 'POST':
        make = request.form['make']
        model = request.form['model']
    
        conn = get_db_connection()
        cur = conn.cursor()
        cur.execute(
            "SELECT make, name, edition, hp, torque, cylinder, displacement, aspiration, drive, transmission, min_year, max_year, body FROM car_models AS M \
            JOIN car_name AS N ON M.name_id = N.id \
            JOIN car_make AS MA ON MA.id = N.make_id \
            WHERE make = %s AND name = %s;",
            (make, model))
        searched_cars = cur.fetchall()
        num_found = len(searched_cars)
        cur.close()
        conn.close()
        return render_template('search_return.html', cars = searched_cars, num_returned = num_found)
        # return render_template('return_cars.html', cars = searched_cars)

    return render_template('search.html')

@app.route('/criteria/', methods=('GET', 'POST'))
def filter():
    if request.method == 'POST':
        market = request.form.getlist('domestic market')
        aspiration = request.form.getlist('aspiration')
        drive = request.form.getlist('drive')
        body = request.form.getlist('body')
        transmission = request.form.get('transmission')
        torque = request.form.get('torque')
        hp = request.form.get('hp')
        min_year = request.form.get('min_year')
        sort_by = request.form.get('sort_by')
        conn = get_db_connection()
        cur = conn.cursor()
        base_sql = "SELECT make, name, edition, hp, torque, cylinder, displacement, aspiration, drive, transmission, min_year, max_year, body FROM car_models AS M \
                JOIN car_name AS N ON M.name_id = N.id \
                JOIN car_make AS MA ON MA.id = N.make_id "
        
        criteria_lst = []

        if len(market) == 1:
            market_sql = f"country = '{market[0]}'"
        elif len(market) > 1:
            market_sql = f"country IN {tuple(market)}"
        else:
            market_sql = ''
        criteria_lst.append(market_sql)

        if len(aspiration) == 1:
            aspir_sql = f"aspiration = '{aspiration[0]}'"
        elif len(aspiration) > 1:
            aspir_sql = f"aspiration IN {tuple(aspiration)}"
        else:
            aspir_sql = ''
        criteria_lst.append(aspir_sql)

        if len(drive) == 1:
            drive_sql = f"drive = '{drive[0]}'"
        elif len(drive) > 1:
            drive_sql = f"drive IN {tuple(drive)}"
        else:
            drive_sql = ''
        criteria_lst.append(drive_sql)

        if len(body) == 1:
            body_sql = f"body = '{body[0]}'"
        elif len(body) > 1:
            body_sql = f"body IN {tuple(body)}"
        else:
            body_sql = ''
        criteria_lst.append(body_sql)

        if transmission == 'man':
            trans_sql = "transmission <> 'auto'"
        elif transmission == 'auto':
            trans_sql = "transmission <> 'man'"
        else:
            trans_sql = ''
        criteria_lst.append(trans_sql)

        hp_sql = f"hp >= {hp}"
        criteria_lst.append(hp_sql)

        torque_sql = f"torque >= {torque}"
        criteria_lst.append(torque_sql)

        if len(min_year) == 0:
            year_sql = ''
        else:
            year_sql = f"max_year >= {min_year}"
        criteria_lst.append(year_sql)

        conditions_sql = "" 
        for condi in criteria_lst:
            if len(conditions_sql) == 0 and len(condi) > 0:
                conditions_sql = "WHERE " + condi
            elif len(conditions_sql) > 0 and len(condi) > 0:
                conditions_sql += " AND " + condi

        if sort_by == 'make':
            sort_sql = " ORDER BY make ASC, name ASC, edition ASC"
        elif sort_by == 'name':
            sort_sql = " ORDER BY name ASC, edition ASC"
        elif sort_by == 'hp':
            sort_sql = " ORDER BY hp DESC, torque DESC"
        elif sort_by == 'max_year':
            sort_sql = " ORDER BY max_year DESC, min_year DESC, make DESC"
        else:
            sort_sql = ""

        sql = base_sql + conditions_sql + sort_sql +';'

        cur.execute(sql)
        filtered_cars = cur.fetchall()
        num_found = len(filtered_cars)
        cur.close()
        conn.close()
        return render_template('filter_return.html', cars = filtered_cars, num_returned = num_found)
        # return render_template('return_cars.html', cars = filtered_cars)
    
    return render_template('filter.html')

if __name__ == '__main__':
    app.run(debug= True)