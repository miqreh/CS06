#!/usr/bin/python
import pymysql.cursors
#représente la connexion à la base de données
# DBhost="89.156.159.82"
# DBuser="root"
# DBpwd="Cs06Arroseur@2018"
# Db="arrosage"

# config Local
DBhost="localhost"
DBuser="root"
DBpwd=""
Db="arrosage"


# Connexion en local
db = pymysql.connect(host=DBhost,
                      user=DBuser,
                      passwd=DBpwd,
                      db=Db,charset="utf8mb4",cursorclass=pymysql.cursors.DictCursor)
# db = pymysql.connect(host=DBhost,
#                        user=DBuser,
#                        passwd=DBpwd,
#                        db=Db,charset="utf8mb4",cursorclass=pymysql.cursors.DictCursor)
#Connexion sur le raspberry
#db = pymysql.connect(host="89.84.40.210",
                       #user="root",
                       #passwd="pi",
                       #db="eb04",charset="utf8mb4",cursorclass=pymysql.cursors.DictCursor)

cursor = db.cursor()

