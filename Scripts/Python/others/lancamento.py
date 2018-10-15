#!/usr/bin/env python

import json, requests

response = requests.get("https://launchlibrary.net/1.2/launch?next=10")
todos = json.loads(response.text)

# print todos
print todos["launches".net]