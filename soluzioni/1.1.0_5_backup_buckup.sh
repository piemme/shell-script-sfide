#!/usr/bin/env bash
#SFIDA N. 5

#Lo script shell dovrà archiviare come "tarball" (*.tar.gz file)
# tutti i file della home directory che sono stati modificati nelle ultime 48 ore.
#(Usa il comando find).
#Il nome del tarball deve conservare la data in cui è stato eseguito.

# ------------------------------------------------------------------------

find /home/gerson -mtime -2 -exec tar -cvzaf 25.07.2022.tar.gz {} \;

# ------------------------------------------------------------------------
# traduzione dei comandi usati: 
# 'find'(trova ogni dato riguardante la directory, unito al '-mtime -2' quelli modificati nelle ultime 48h);
# 'exec'(permette l'iserimento di un altro comando che va a modificare l'output di find);
# 'tar'(creazione archivio unito al '-cvzaf' crea un archivio, comprime i file, li unisce in un unico archivio e devi inserire il nome del archivio);
