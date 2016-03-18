#!/bin/bash

cd ~
echo "Files with x permission in HOME"
ls -l | grep "^...x" | wc -l

echo "Launching Google Chrome..."
google-chrome && echo "Google Chrome has this many processes"
ps aux | grep chrome | grep -v grep | wc -l

echo "Users with number > 100 in /etc/passwd:"
cat /etc/passwd | grep ":[[:digit:]]\{3,\}:" | cut -d ':' -f 1 | sed -e's/\n/, /'
