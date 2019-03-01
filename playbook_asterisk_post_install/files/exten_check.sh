#!/bin/bash

LENEXTEN=$(asterisk -rx 'sip show peers' | grep $1 | awk 'NR==1{print $1}' | wc -c)
if [ ${LENEXTEN} -gt 5 ] || [ ${LENEXTEN} -gt 10 ]; then
	echo "SET VARIABLE res OK"
else
	echo "SET VARIABLE res ERROR"
fi
