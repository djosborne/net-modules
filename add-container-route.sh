#!/bin/bash

SLAVEIP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' metaswitchmodules_slave1_1`
sudo ip route replace 192.168.0.0/16 via $SLAVEIP