#!/usr/bin/env python

import urllib, json

##############################
# create date:       13/03/19
# last modification: 19/02/20
# version:              0.25
##############################

def launches():
    path_input_launch = "/tmp/launch"
    url = "https://launchlibrary.net/1.2/launch?next=01&mode=verbose"
    response = urllib.urlopen(url)
    data = json.loads(response.read())

    for x in data['launches']:
        rocket = x['name']
        date = x['net']

    file = open(path_input_launch,"w") 
    file.write("#NEXT_LAUNCH: Rocket: " + rocket) 
    file.write(", Date: "+ date + "(EDT: -3)") 
    file.close() 

launches()