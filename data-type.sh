#!/bin/bash

# adding two integer numbers
NUMBER1=$1
NUMBER2=$2
TIMESTAMP=$(date)
echo "script executed at:$TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))
echo "SUM OF $NUMBER1 and $NUMBER2 is:$SUM"
