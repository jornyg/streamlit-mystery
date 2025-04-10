import sqlite3
import os

FILE_PATH = './tables/'
FILES = ['utstyr.sql', 'utstyr_logg.sql', 'ansatt.sql', 'adgang_logg.sql', 'tabeller.sql', '_losning.sql']

def init_db():
    conn = sqlite3.connect('data.db')
    c = conn.cursor()
    
    for file in FILES:
        if os.path.exists(f"{FILE_PATH}{file}"):
            with open(f"{FILE_PATH}{file}", 'r') as sql_file:
                sql_script = sql_file.read()
                c.executescript(sql_script)
    
    conn.commit()
    conn.close()

if __name__ == "__main__":
    init_db()