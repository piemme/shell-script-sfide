#!/usr/bin/env bash
#SFIDA N. 5

#Lo script shell dovrà archiviare come "tarball" (*.tar.gz file)
# tutti i file della home directory che sono stati modificati nelle ultime 48 ore.
#(Usa il comando find).
#Il nome del tarball deve conservare la data in cui è stato eseguito.
# ------------------------------------------------------------------------
#find ~ -mtime -2 | xargs tar -cvzf "$(date +"%m-%d-%y")".tar.gz 
tar -cvzf "$(date +"%m-%d-%y")".tar.gz | xargs find ~ -type f -mtime -2 
# ------------------------------------------------------------------------
# traduzione dei comandi usati: 
# 'find'(trova ogni dato riguardante la directory, unito al '-mtime -2' quelli modificati nelle ultime 48h);
<<<<<<< HEAD
# '~' indica la dirctory (Home/NOME-UTENTE).
# 'exec'(permette l'iserimento di un altro comando che va a modificare l'output di find);
=======
# 'xargs'(permette il passaggio del output di find al comando tar);
>>>>>>> dev
# 'tar'(creazione archivio unito al '-cvzaf' crea un archivio, comprime i file, li unisce in un unico archivio e devi inserire il nome del archivio);
#find ~ -type f -mtime -2 