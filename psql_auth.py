def secrets():
    return {"host": "localhost",
            "port": 5432,
            "database": "cars",
            "user": "postgres",
            "pass": "Ken1099033"} # Input your own password HERE

def alchemy(secrets) :
    return ('postgresql://'+secrets['user']+':'+secrets['pass']+'@'+secrets['host']+
        ':'+str(secrets['port'])+'/'+secrets['database'])