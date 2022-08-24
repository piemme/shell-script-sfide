#!/usr/bin/env bash
#SFIDA N. 5

#Lo script shell dovrà archiviare come "tarball" (*.tar.gz file)
# tutti i file della home directory che sono stati modificati nelle ultime 48 ore.
#(Usa il comando find).
#Il nome del tarball deve conservare la data in cui è stato eseguito.

# ------------------------------------------------------------------------

find /home/gerson -mtime -2 -exec tar -cvzaf 25.07.2022.tar.gz {} \;

# ------------------------------------------------------------------------
# conoscenze richieste: 
# 'find'(trova ogni dato riguardante la directory, come il '-mtime' che trova i dati riguadanti i file modificati);
# 'exec'(permette l'iserimento di un altro comando che va a modificare l'output di find);
# 'tar'(creazione archivio);
# '-cvzaf'(opszioni del comando 'tar'), (-c) crea un archivio , (-v) manda nel display le informazioni, (-z) comprime il file, (-a) unisci i file i un unico archivio, (-f) permette l'iserimento del nome del archivio;
