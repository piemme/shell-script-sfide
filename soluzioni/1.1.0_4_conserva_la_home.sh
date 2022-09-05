#!/usr/bin/env bash
#SFIDA N. 4

#Lo script shell dovrà:
# - fare un listing ricorsivo del contenuto della home directory
# - salvare le informazioni su un file
# - comprimere il file

#------------------------------------------------------------------------------------------------------


cp -r $HOME/* > 'copia_home.txt' # 'ls' stampa il contenuto di '$HOME/*' dentro un file testo 'copia_home.txt'
[ -f copia_home.txt.gz ] && rm copia_home.txt.gz # una condizione che controlla l'esistenza del file, se è vera lo elimina.
gzip -k copia_home.txt #'gzip -k' comprime il il file scelto
cat copia_home.txt #'cat' mostra il contenuto del file testo
