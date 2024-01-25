#!/bin/bash 

src_dir=/home/shoaib/Desktop/devops

tgt_dir=/home/shoaib/Desktop/backup

curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")


backup_file=$tgt_dir/$curr_timestamp.tgz


tar czf "$backup_file"  --absolute-names  "$src_dir"


echo "Taking backup on $curr_timestamp"



