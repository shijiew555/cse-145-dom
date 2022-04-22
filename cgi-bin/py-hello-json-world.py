#!/usr/bin/python3

import time
import os

print("Content-type: application/json\r\n\r\n")
print("{\"message\":\"Hello World\",\"date\":\"%s\",\"currentIP\":\"%s\"}" % (time.time(), os.environ["REMOTE_ADDR"]))
