#!/bin/bash


echo "id/name/team/amount/time" > available.txt 
cat ~/trhl/data/stat.txt | awk -F: '($3 < 5 && $3 > 0) \
	{print $1 "/" $2 "/" $4 "/" $5 "/" 1900+$6 "-"$7 "-" $8"T"$9":"$10":"$11 "-0500"}'| 
	sort --field-separator=\/ --key 5  >> available.txt  
cat available.txt
