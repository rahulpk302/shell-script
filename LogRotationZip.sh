#!/bin/bash

log_dir="/var/log/"
archive_dir="/var/log/secure_archive"

mkdir -p $archive_dir

find $log_dir/secure* -mtime +7 -exec mv {} $archive_dir \;
gzip $archive_dir/*
