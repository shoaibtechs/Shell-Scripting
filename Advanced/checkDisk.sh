#!/bin/bash 


df -H | awk '{print $1 " " $2 " " $3 }'
