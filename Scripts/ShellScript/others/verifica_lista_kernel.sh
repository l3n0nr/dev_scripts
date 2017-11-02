#!/bin/bash
list=$(curl -s http://kernel.ubuntu.com/~kernel-ppa/mainline/ | awk -F\" '{if (NF > 7) print "http://kernel.ubuntu.com/~kernel-ppa/mainline/"$8}')
AddressVersion=$( echo "${list}" | tail -n 1)

echo $AddressVersion
