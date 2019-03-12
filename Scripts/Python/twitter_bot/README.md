ORIGINAL SCRIPT: https://github.com/pylenin/twitter_bot/blob/master/twitter_bot.py

python 'script.py' 'command' 'parameter'

	-tl 	= list recent timeline 			[NOT PARAMETER]
	-rt 	= retweet something				[parameter id]
	-t 		= twitt new post				[parameter 'text']
	-file 	= post twitt via text file 		[NOT PARAMETER]

External files:
	path_keys: Permission for use API(only values and that sequency)
		- consumer_key
		- consumer_secret
		- access_token
		- access_token_secret

	path_input_twitts = "/tmp/twitter"
		- Local text file twitts