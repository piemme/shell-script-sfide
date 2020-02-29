#!/usr/bin/env bash

# listening ricorsivo della home directory che salva il tutto in un file e lo comprimee

echo "Sto creando un file resoconto.txtresoconto.txt con il istato della tua home directory, nella tua homedirectory"

#tmp=/stampo.txt
cd || exit 1
ls -R > resoconto.txt | gzip resoconto.txt || exit 1
