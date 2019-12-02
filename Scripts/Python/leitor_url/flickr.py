#!/usr/bin/env python
#
from flickrapi import FlickrAPI
import sys, os, linecache
reload(sys)
sys.setdefaultencoding('utf8')
#
#########################
# data criacao = 29/11/19
# ultima modif = 02/12/19
# versao       = 0.35
#########################
#
output_file	= '/tmp/flick_output.txt'
api_file	= '/home/lenonr/Dropbox/Arquivos/Flickr/keys'

# open file keys
f = open(api_file, 'r')
list_of_lines = f.read().splitlines()

# capture values
api_key = list_of_lines[0]
api_secret = list_of_lines[1]
 
# convert values to string
api_key = str(api_key)
api_secret = str(api_secret)

# close connection
f.close()

# set values search
flickr 	= FlickrAPI(api_key, api_secret, format='parsed-json')
loop	= 10
array	= ['Ariane Arianespace', 'BlueOrigin NewShepard', 'Electron RocketLab', 'Delta ULA', 'Atlas ULA', 'SpaceX Falcon', 'PSLV ISRO']

with open(output_file, "w") as text_file:
	for x in range(0,len(array)):	
		for y in range(0, loop):			
			try:
				extras	= 'url_o'

				space 	= flickr.photos.search(text=array[x], per_page=loop, extras=extras)
				photos 	= space['photos']
				
				title   = photos['photo'][y]['title']		
				url 	= photos['photo'][y][extras]
			except KeyError:
				extras	= 'url_m'

				space 	= flickr.photos.search(text=array[x], per_page=loop, extras=extras)
				photos 	= space['photos']
				
				title   = photos['photo'][y]['title']		
				url 	= photos['photo'][y][extras]

			title_url = (array[x] + ' - ' + title + ': ' + url)

			from pprint import pprint
			text_file.write("%s\n" % title_url)