#!/bin/bash

NUMBER=$1

# -gt,-lt,-eq,-ge,-le,-ne

if [$NUMBER -gt 100]
then
    echo "given number is graterthan 100"
else
    echo "given number is leass than or equal to 100"
fi
