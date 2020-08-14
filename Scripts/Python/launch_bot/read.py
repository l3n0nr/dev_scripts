#!/usr/bin/env python

import json
from urllib.request import Request, urlopen

##############################
# create date:       13/03/19
# last modification: 14/08/20
# version:              0.30
##############################

def launch_single():
    path_input_launch = "/tmp/launch"
    url = "https://launchlibrary.net/1.2/launch?next=01&mode=verbose"
    req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    response = urlopen(req).read()
    data = json.loads(response.decode('utf-8'))

    for x in data['launches']:
        rocket = x['name']
        date = x['net']

    file = open(path_input_launch,"w") 
    file.write("#NEXT_LAUNCH: Rocket: " + rocket) 
    file.write(", Date: "+ date + "(EDT: -3)") 
    file.close() 

launch_single()