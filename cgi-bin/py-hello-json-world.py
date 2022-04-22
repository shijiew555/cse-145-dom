#!/usr/bin/python3

import time
import os

print("Content-type: application/json");
print("{\"message\":\"Hello World\",\"date\":\"%s\",\"currentIP\":\"%s\"}" % (time.time(), os.environ["REMOTE_ADDR"]));
