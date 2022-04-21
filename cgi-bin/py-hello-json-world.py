#!/usr/bin/python3

import time
import os

print("Content-type: application/json\r\n\r\n");
print("{\t\"message\": \"Hello World\",");
print("\t\"date\": \"%s\"," % time.time());
print("\t\"currentIP\": \"%s\"}" % os.environ["REMOTE_ADDR"]);
