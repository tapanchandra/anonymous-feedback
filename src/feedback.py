from bottle import route, post, request, redirect, default_app, error, static_file, view
import sqlite3

# @route('/name/<name>')
# def nameindex(name='Stranger'):
#     return '<strong>Hello, %s!</strong>' % name

@route('/static/<filepath:path>')
def server_static(filepath):
	return static_file(filepath, root='static')

@route('/')
@view('form')
def index():
	return dict()

@route('/adfasl')
@view('display')
def display():
	dbconnection = sqlite3.connect('db/db.sqlite')
	db = dbconnection.cursor()

	query = "SELECT record from ENTRIES"
	db.execute(query)
	result = db.fetchall()
	result = [x[0] for x in result]
	print(result)
	db.close()

	return dict(rows=result)

# @route('/success')
# @view('success')
# def success():
# 	return dict()

@route('/addrecord',method='POST')
@view('success')
def addrecord():
	# Read form values
	entry = request.forms.get('entry')

	#save to database
	dbconnection = sqlite3.connect('db/db.sqlite')
	db = dbconnection.cursor()
	query = "INSERT INTO ENTRIES(record) VALUES(?)"
	print(query)

	db.execute(query,tuple([entry]))

	dbconnection.commit()
	db.close()

	return dict()
	# redirect("/success")

@error(404)
def error404(error):
	return 'Page Not found'

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.abspath('views')) 

application=default_app()