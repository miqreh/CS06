#!/usr/bin/python

#représente la connexion à la base de données
DBhost=""
DBuser=""
DBpwd=""
Db=""


import pymysql.cursors
# Connexion en local
db = pymysql.connect(host=DBhost,
                       user=DBuser,
                       passwd=DBpwd,
                       db=Db,charset="utf8mb4",cursorclass=pymysql.cursors.DictCursor)
#Connexion sur le raspberry
#db = pymysql.connect(host="89.84.40.210",
                       #user="root",
                       #passwd="pi",
                       #db="eb04",charset="utf8mb4",cursorclass=pymysql.cursors.DictCursor)

cursor = db.cursor()

