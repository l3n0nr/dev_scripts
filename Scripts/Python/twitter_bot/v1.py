#!/usr/bin/env python

import tweepy, argparse, csv

##############################
# create date:       12/03/19
# last modification: 12/03/19
# version:              0.52
##############################

## CHECK
#       Duplicated links

path_keys = "/home/lenonr/Dropbox/Arquivos/Twitter/keys"
path_input_twitts = "/home/lenonr/Dropbox/Arquivos/Twitter/posts"
# path_input_twitts = "/tmp/testando_twitter"

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
            if x == 0:
                ### post new twitt
                api.update_status(', '.join(allData[x]))                
                print("Your tweet successfully posted!")

                ### remove twitt posted
                with open(path_input_twitts,"r+") as f:
                    new_f = f.readlines()
                    f.seek(0)
                    for line in new_f:
                        if (', '.join(allData[x])) not in line:
                            f.write(line)
                    f.truncate()   
    if args.rt:
        api.retweet(args.rt)
        print("Your retweet successfully done!")

twitt()