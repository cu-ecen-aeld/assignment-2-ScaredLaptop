#!/bin/bash
if [ "$#" -ne 2 ]
then
  echo "Parameter not specified"
  exit 1;
fi

if [ ! -d $1 ]
then
  echo "invalid directory"
  exit 1;
fi
X=$(ls $1 | wc -l)
Y=$(grep $2 -c -r $1 | awk -F: '{print $2}' | awk '{s+=$1} END {print s}')
echo "The number of files are "$X" and the number of matching lines are "$Y;
