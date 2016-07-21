#!/bin/bash

#read port_num
if [ "$1" != "" ] ; then
        firewall-cmd --zone=public --permanent --add-port=$1/tcp
        firewall-cmd --reload
        echo "Show Firewall: "
        firewall-cmd --list-all
else
        echo "Plz enter port number."
fi