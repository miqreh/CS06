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
    return round((date - now).total_seconds())