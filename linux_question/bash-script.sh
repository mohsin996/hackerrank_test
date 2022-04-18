#!/usr/bin/env bash

tar -xvzf /home/ubuntu/894065-linux-access-log-cleanup/archive.tar.gz
awk '$2 != "" { printf $1 " " $2"\n"}' access.*.log > /tmp/access.log
exit 0
