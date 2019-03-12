#!/usr/bin/env python

import tweepy, argparse, csv

##############################
# create date:       12/03/19
# last modification: 12/03/19
# version:              0.20
##############################

## CHECK
#       Duplicated links

path_keys = "/home/lenonr/Dropbox/Arquivos/Twitter/keys"
path_input_twitts = "/tmp/twitter"

def twitt():
    parser = argparse.ArgumentParser(description='Provide your tweet')
    parser.add_argument('-t', action="store", dest="t")
    parser.add_argument('-rt', action="store", dest = "rt")
    parser.add_argument('-tl', action="store_true", default=False)
    parser.add_argument('-file', action="store_true", default=False)

    args = parser.parse_args()

    with open(path_keys, "rb") as infile:
        reader = csv.reader(infile, delimiter="\t")
        content = list(reader)

    auth = tweepy.OAuthHandler((', '.join(content[0])), (', '.join(content[1])))
    auth.set_access_token((', '.join(content[2])), (', '.join(content[3])))

    api = tweepy.API(auth)
    if args.tl:
        for tweet in api.home_timeline():
            print(tweet.text)
            print(tweet.id)
            print("\n")    
    if args.t:
        api.update_status(args.t)
        print("Your tweet successfully posted")
    if args.file:
        with open(path_input_twitts, "rb") as infile:
            reader = csv.reader(infile, delimiter="\t")
            allData = list(reader)

        for x in xrange(len(allData)):
            api.update_status(', '.join(allData[x]))
        
        print("Your's tweets successfully posted!")

    if args.rt:
        api.retweet(args.rt)
        print("Your retweet successfully done!")

twitt()