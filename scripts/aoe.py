#!/usr/bin/python3

from datetime import datetime
from datetime import timezone
from datetime import timedelta

print("+-----------------+")
print("| AoE Date & Time |")
print("+-----------------+")
a = datetime.now(timezone.utc)
b = a - timedelta(hours=12)
c = str(b).split(".")[0].split(" ")
print("Date:", c[0])
print("Time:", c[1])
