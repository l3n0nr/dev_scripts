#!/usr/bin/env python

import tweepy, argparse, csv, json

##############################
# create date:       15/03/19
# last modification: 15/03/19
# version:              0.10
##############################

def launches():
    path_keys = "/home/lenonr/Dropbox/Arquivos/Twitter/keys"
    path_input_launch = "/tmp/launch"
    
    with open(path_keys, "rb") as infile:
        reader = csv.reader(infile, delimiter="\t")
        content = list(reader)

    auth = tweepy.OAuthHandler((', '.join(content[0])), (', '.join(content[1])))
    auth.set_access_token((', '.join(content[2])), (', '.join(content[3])))
    api = tweepy.API(auth)    

    with open(path_input_launch, "rb") as infile:
        reader = csv.reader(infile, delimiter="\t")
        allData = list(reader)

    for x in xrange(len(allData)):
        api.update_status(', '.join(allData[x]))                
        print("Your tweet successfully posted!")

launches()