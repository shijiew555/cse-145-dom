#!/usr/bin/python3

import time
import os

print("Content-type: application/json\r\n\r\n");
print("{\n\t\"message\": \"Hello World\",\n");
print("\t\"date\": \"%s\",\n" % time.time());
print("\t\"currentIP\": \"%s\"\n}\n" % os.environ["REMOTE_ADDR"]);
