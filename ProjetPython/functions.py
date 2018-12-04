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

def timedelta_to_hour_str(delta):
    totsec = delta.total_seconds()
    h = totsec // 3600
    m = (totsec % 3600) // 60
    sec = (totsec % 3600) % 60  # just for reference
    heure = ""
    minute = ""
    if h < 10:
        heure = "0"
    if m < 10:
        minute = "0"
    hour = heure + "%d:" % h + minute + "%d" % m
    return hour


def get_day(jour):
    day="unknown"
    if jour == 1 :
            day = "monday"
    elif jour== 2 :
            day = "tuesday"
    elif jour ==3:
        day ="wednesday"
    elif jour == 4:
        day ="thursday"
    elif jour ==5:
        day = "friday"
    elif jour ==6 :
        day ="saturday"
    elif jour ==7 :
        day = "sunday"

    return day