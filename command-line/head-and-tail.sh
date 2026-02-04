#!/bin/bash

FILE="https://assets.01-edu.org/devops-branch/HeadTail.txt"

curl -s ${FILE} > HeadTail.txt
head -1 HeadTail.txt
tail -1 HeadTail.txt
