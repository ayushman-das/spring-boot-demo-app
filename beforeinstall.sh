#!/bin/bash -xe
cd /home/ec2-user
sudo rm -rf *
sudo yum install -y maven
sudo yum install java-17-amazon-corretto-devel -y 
PID=`ps -eaf | grep webapp | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi
