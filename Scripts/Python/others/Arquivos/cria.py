#autor: github.com/JoaoOMC

import os
for item in range(10):
	if item % 2 == 0:
		os.system("touch " + str(item) + ".png")
	else:
		os.system("touch " + str(item) + ".jpg")

