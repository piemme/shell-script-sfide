#SFIDA N. 4

#Lo script shell dovrà:
# - fare un listing ricorsivo del contenuto della home directory
# - salvare le informazioni su un file
# - comprimere il file

#!/bin/bash 

ls $HOME/* > 'copia_home.txt'
echo "comprimo il file" 
[ -f copia_home.txt.gz ] && rm copia_home.txt.gz
gzip -k copia_home.txt
echo "view del file"
cat copia_home.txt




