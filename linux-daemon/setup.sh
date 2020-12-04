#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please execute as root"
  exit
fi

#TODO: Make runcmd test if the executed command failed or not...
runcmd {
    "$@";
}

echo "Preparing Unofficial NeosVR Headless Client Daemon tools..."
runcmd apt -qq update
runcmd apt -qq install git
#TODO: Actually clone what we need
#runcmd git clone 