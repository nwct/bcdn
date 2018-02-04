#!/bin/bash
inputinfo=$1
if [ "$inputinfo" = "" ]; then
cd /root/bcdn/BerryMiner_v1_0/server
./bcdn_check.sh
else
echo -ne "$1" > /root/bcdn/BerryMiner_v1_0/server/conf/code.txt
cd /root/bcdn/BerryMiner_v1_0/server
./bcdn_check.sh
fi
