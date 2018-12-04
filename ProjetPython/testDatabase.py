import config
import database
import datetime




def convert_date(x, y, z):
    orig_date = datetime.datetime(x, y, z)
    orig_date = str(orig_date)
    d = datetime.datetime.strptime(orig_date, '%Y-%m-%d %H:%M:%S')
    d = d.strftime('%m/%d/%y')
    return d


# permet d'obtenir un objet datetime à partir d'une date et d'un temps
def date_to_datetime(date, delta):
    my_date = datetime.datetime.combine(date, datetime.time.min)
    my_date += delta
    return my_date


# permet d'avoir le temps restant avant la date butoir
def seconds_remaining(date):
    now = datetime.datetime.now()
    return (date - now).total_seconds()
# # Query pour avoir tous les plannings
query = 'SELECT * FROM planning INNER JOIN zone on planning.idprog = zone.idprog WHERE convert(CONCAT(date_arrosage," ",heure_debut),datetime) >= now()'
#query = 'SELECT * FROM planning INNER JOIN zone on planning.idprog = zone.idprog'

#
database.cursor.execute(query)


# (t-datetime.datetime(1970,1,1)).total_seconds()
# Je recupère les résultats puis j'obtiens le nombre de secondes avant prochaine exécution puis je plannifie
results = database.cursor.fetchall()
for d in results:
    print(d)
    date = date_to_datetime(d['date_arrosage'],d['heure_debut'])
    print(date)
    seconds = seconds_remaining(date)
    print(seconds)
database.cursor.close()
database.db.close()