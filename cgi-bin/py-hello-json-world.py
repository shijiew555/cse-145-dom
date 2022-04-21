#!/usr/bin/python3

import time
import os

print("Content-type: application/json\r\n\r\n");
print("{\"message\": \"Hello World\",");
print("\"date\":\"%s\"," % time.date());
print("\"currentIP\": \"%s\"}" % os.environ["REMOTE_ADDR"]);
