#!/usr/bin/env bash
#SFIDA N. 4

#Lo script shell dovrà:
# - fare un listing ricorsivo del contenuto della home directory
# - salvare le informazioni su un file
# - comprimere il file

#------------------------------------------------------------------------------------------------------


ls $HOME/* > 'copia_home.txt'
echo "comprimo il file" 
#qui si presenta una condizione che controlla l'esistenza del file, se è vera lo elimina.
[ -f copia_home.txt.gz ] && rm copia_home.txt.gz
gzip -k copia_home.txt
echo "view del file"
cat copia_home.txt

#-------------------------------------------------------------------------------------------------------

# questo esercizio prevede la conoscenza del comando 'ls'(stampa il contenuto dela cartella selezionata)
# e saper decidere l'uscita del suo output, 
# 'gzip' (comprimi), 'cat' (stampa il contenuto del file selezionato).


