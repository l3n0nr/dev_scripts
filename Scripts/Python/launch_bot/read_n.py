#!/usr/bin/env python

import json
from urllib.request import Request, urlopen

##############################
# create date:       14/08/20
# last modification: 14/08/20
# version:              0.10
##############################

def launches_n():
    path_input_launch_n = "/tmp/launches"

    file = open(path_input_launch_n,"w") 
    file.write("#NEXT_LAUNCH_TOP5:") 
    file.close() 

    for y in range(1,6):
        url = "https://launchlibrary.net/1.2/launch?next=" + str(y) + "&mode=verbose"
        req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        response = urlopen(req).read()
        data = json.loads(response.decode('utf-8'))

        for x in data['launches']:
            rocket = x['name']

        with open(path_input_launch_n, "a") as a_file:
            a_file.write(" #" + str(y) + " : " + rocket)

launches_n()