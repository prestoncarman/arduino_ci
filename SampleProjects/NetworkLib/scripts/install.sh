#!/bin/bash

# if we don't have an Ethernet library already (say, in new install or for an automated test),
# then get the custom one we want to use for testing
echo "Inside install script"
cd $(bundle exec arduino_library_location.rb)
pwd
if [ ! -d ./Ethernet ] ; then
  echo "Before clone"
  git clone -v --depth 1 https://github.com/Arduino-CI/Ethernet.git
  echo "Complete clone"
fi
