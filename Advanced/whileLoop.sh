#!/bin/bash 

alert=50


df -H | awk '{print $5 " " $1}' | while read output;

do 

#echo "Disk Detail: " $output 

file_sys=$(echo $output | awk '{print $2}' )

usage=$(echo $output |awk '{print $1}'| cut -d'%' -f1  )



#echo $usage 

if [ $usage -ge $alert ]
then
       echo "CRITICAL for $file_sys"

fi

done

