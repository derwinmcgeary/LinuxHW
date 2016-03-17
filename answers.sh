#!/bin/bash

cd ~
echo "Files with u+x permission in HOME"
ls -l | grep "^...x" | wc -l

google-chrome &

echo "Google Chrome has this many processes"
ps aux | grep chrome | wc -l

echo "Users with number > 100 in /etc/passwd:"
cat /etc/passwd | grep ":[[:digit:]]\{3,\}:" | wc -l
