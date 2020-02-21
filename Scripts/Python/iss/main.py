import requests, json, datetime

## REFERENCE: https://github.com/tatic0/nextISSpasses/blob/master/iss.py

lat = -29.7906  # latitude
lon = -55.7954  # longitude
alt = 100       # altitude is just BS
passes = 3      # passes over sky
baseurl = "http://api.open-notify.org/iss-pass.json" # base
query = "lat=" + str(lat) + "&lon=" + str(lon) + "&alt=" + str(alt) + "&n=" + str(passes)

def check():
  req = requests.get(baseurl, params=query)
  dldata = req.text

  data = json.loads(dldata)
  response = data['response']

  print("###############################################")
  print("Your location: LAT: " + str(lat) + " LON: " + str(lon))
  print("\n")

  for i in response:
    duration = i['duration']
    risetime = i['risetime']
    begintime = lambda x:datetime.datetime.fromtimestamp(x).strftime('%Y-%m-%d %H:%M:%S')
    beginTime = datetime.datetime.fromtimestamp(risetime).strftime('%Y-%m-%d %H:%M:%S')
    passDate = beginTime[0:10]
    today = datetime.datetime.today().strftime('%Y-%m-%d')
    
    if passDate == today:
      endtime = lambda x, y:datetime.datetime.fromtimestamp(x + y).strftime('%Y-%m-%d %H:%M:%S') 
      passtime = lambda x: str(datetime.timedelta(seconds=x))
      print("Station pass starts at: {0} and \nends at: {1}".format(begintime(risetime),endtime(risetime, duration)))
      print("Duration {0}".format(passtime(duration)))

  print("###############################################")

check()