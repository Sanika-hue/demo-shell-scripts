#!/bin/bash

<<info
This shell script will take periodic backups

eg.
./backup.sh <source> <dest>
info

src=$1
dest=$2


timestamp=$(date '+%Y-%m-%d')

zip -r "$dest/backup-$timestamp.zip" $src >/dev/null

aws s3 sync "$dest" s3://tws-backups-s

echo "backup completed and uploaded to s3"

