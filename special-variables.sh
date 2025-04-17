#!/bin/bash

echo "all variables passed: $@"
echo "number of variables: $#"
echo "script name: $0"
echo "present working directory: $PWD"
echo "home directory of current user: $HOME"
echo "which user is running this script: $USER"
echo "process id of current script: $$"
sleep 70 &
echo "process id of last command in background: $!"