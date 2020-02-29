#/usr/bin/env bash

#creazione di un file tar con la data del lancioo dello script contennte tutti i file in ~

cd ~ || exit 1
tar -zcvf "$(date '+%Y-%m-%d-%H-%M-%S').tar" $(find . -mtime -2) || exit 1
