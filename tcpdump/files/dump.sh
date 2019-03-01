#!/bin/bash
x=$1
if [[ "$x" != ""]];then
name=$x
else
name=dump
fi
trap "cp dump.cap /var/lib/tftpboot/$name.cap" SIGINT
tcpdump -i any udp port 5060 or udp portrange 10000-20000 -s 0 -w $name.cap
