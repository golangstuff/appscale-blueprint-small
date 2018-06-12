#!/bin/bash
#
# Creates AppScalefile.
# 

# Stop execution on error
set -e

FILE=~/AppScalefile
IP=`ip route get 8.8.8.8 | awk '{print $NF; exit}'`
echo "ips_layout:" >> $FILE
echo "  -" >> $FILE
echo "    roles:" >> $FILE 
echo "      - master" >> $FILE 
echo "      - compute" >> $FILE
echo "      - database" >> $FILE
echo "      - zookeeper" >> $FILE
echo "    nodes: $IP" >> $FILE
