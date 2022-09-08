#!/usr/bin/env bash
#SFIDA N. 5 #1.2.1
#find ~ -mtime -2 | xargs -0 tar -czavf "$(date +"%m-%d-%y")".tar.gz
#tar -czavf "$(date +"%d-%m-%y")".tar.gz | xargs -0 find ~ -mtime -2
ls -1 | xargs -0 find ~ -amin -2 