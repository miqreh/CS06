import config
import database

#Query pour avoir tous les plannings
query = 'Select * From planning inner join zone on planning.idprog = zone.idprog'

database.cursor.execute(query)

# (t-datetime.datetime(1970,1,1)).total_seconds()
# Je recupère les résultats puis j'obtiens le nombre de secondes avant prochaine exécution puis je plannifie
results = database.cursor.fetchall()

for d in results:
    print(d)

