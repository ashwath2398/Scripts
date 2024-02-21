#!/bin/bash

<< mute
this script will take backups of script folder
mute

src_dir="/home/ubuntu/ash/scripts"
tgt_dir="/home/ubuntu/ash/backups"

backup_filename="backup_$(date +%d-%m-%Y-%H-%M-%S).tar.gz"

echo "$backup_filename backup starting"

tar -czvf "${tgt_dir}/${backup_filename}" "$src_dir"

echo "backup started"
