import sys
import os

if len(sys.argv) != 2:
    exit(1)

filename = sys.argv[1]

if not os.access(filename, os.R_OK):
    exit(1)

with open(filename, "r") as infile:
    lines = infile.readlines()

with open("out.txt", "w") as outfile:
    for line in lines:
        if "pineapple" not in line:
            outfile.write(line)
