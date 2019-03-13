#!/usr/bin/env python

import tweepy, argparse, csv
import urllib, json

##############################
# create date:       13/03/19
# last modification: 13/03/19
# version:              0.15
##############################

def launches():
    path_keys = "/home/lenonr/Dropbox/Arquivos/Twitter/keys"
    path_input_launch = "/tmp/launch"
    url = "https://launchlibrary.net/1.2/launch?next=01&mode=verbose"

    with open(path_keys, "rb") as infile:
        reader = csv.reader(infile, delimiter="\t")
        content = list(reader)

    auth = tweepy.OAuthHandler((', '.join(content[0])), (', '.join(content[1])))
    auth.set_access_token((', '.join(content[2])), (', '.join(content[3])))
    api = tweepy.API(auth)
    response = urllib.urlopen(url)
    data = json.loads(response.read())

    for x in data['launches']:
        rocket = x['name']
        date = x['net']

    file = open(path_input_launch,"w") 
    file.write("NEXT LAUNCH: Rocket: " + rocket) 
    file.write(", Date: "+ date + "(EDT: -3)") 
    file.close() 

    with open(path_input_launch, "rb") as infile:
        reader = csv.reader(infile, delimiter="\t")
        allData = list(reader)

    for x in xrange(len(allData)):
        api.update_status(', '.join(allData[x]))                
        print("Your tweet successfully posted!")

launches()