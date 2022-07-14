#!/bin/bash

if [ $# -ne 2 ] 
then
  echo "args not correct"
  exit 1
fi

echo $2 > $1
