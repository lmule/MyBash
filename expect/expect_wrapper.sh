#!/bin/bash

alias=$1
hostname=$2
password=$3
basepath=$(cd `dirname $0`; pwd)
#password_file=$basepath/expect_pass
password_file=~/.expect_pass

#touch $password_file

line=`grep ":$alias:" $password_file`
if [ $? -eq 0 ]; then
    hostname=`echo "$line" | awk -F ':' '{print $3}'`
    password=`echo "$line" | awk -F ':' '{print $4}'`
    port=`echo "$line" | awk -F ':' '{print $5}'`
fi
$basepath/expect_to_server.sh $hostname $password $port
