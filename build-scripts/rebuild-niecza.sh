#!/bin/sh
export PATH=/usr/local/mono-2.10.1/bin:/usr/local/bin:/usr/bin:/bin
export LD_LIBRARY_PATH=/usr/local/mono-2.10.1/lib
echo "updating niecza"
cd ~/niecza/
git pull
make
mono run/Niecza.exe -C Test JSYNC Threads
