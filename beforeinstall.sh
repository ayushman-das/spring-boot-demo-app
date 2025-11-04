#!/bin/bash -xe
cd /home/ubuntu
sudo rm -rf *
sudo apt install zip -y
sudo apt install -y maven
sudo yum install openjdk-17-jdk -y 
PID=`ps -eaf | grep webapp | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi
