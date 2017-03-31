#!/bin/bash

sbt stage

if [ $? -ne 0 ]; then
  echo "Error"
  echo "sbt return code was not zero but $retval"
  exit
fi

cd shell/target/universal/stage/
bin/smile
cd ../../../..
