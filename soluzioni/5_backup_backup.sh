#!/usr/bin/env bash
#SFIDA N. 5

#Lo script shell dovrà archiviare come "tarball" (*.tar.gz file)
# tutti i file della home directory che sono stati modificati nelle ultime 48 ore.
#(Usa il comando find).
#Il nome del tarball deve conservare la data in cui è stato eseguito.
# ------------------------------------------------------------------------
find $HOME -type f -mtime -2 | xargs tar -cvzf "$(date +"%m-%d-%y")".tar.gz
# ------------------------------------------------------------------------
# traduzione dei comandi usati: 
# 'find'(trova ogni dato riguardante la directory, unito al '-mtime -2' quelli modificati nelle ultime 48h);
# 'xargs'(permette il passaggio del output di find al comando tar);
# 'tar'(creazione archivio unito al '-cvzaf' crea un archivio, comprime i file, li unisce in un unico archivio e devi inserire il nome del archivio);
#find ~ -type f -mtime -2 
