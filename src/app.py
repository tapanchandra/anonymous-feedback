import bottle
from bottle import run,TEMPLATE_PATH
from feedback import application
import os 
import sqlite3


bottle.debug(True)

# Initialize DB
# dbconnection = sqlite3.connect('db/db.sqlite')
# db = dbconnection.cursor()

# Create table
# db.execute('CREATE TABLE ENTRIES(record TEXT)')
# dbconnection.commit()
# db.close()

run(application,host='localhost',port=9000,reloader=True)