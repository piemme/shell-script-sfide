#SFIDA N. 2

#Leggere l'input utente (ammessi i caratteri 'Y', 'y', 'N', 'n').
#Se l'utente ha inserito Y' or 'y' visualizzare "YUP".
#Se ha inserito 'N' or 'n' visualizzare "NOPE".
#Se l'utente ha inserito un altro carattere, visualizzare un messaggio di errore.
#!/bin/bash
echo "Inizializzare l'esercizio?..inserisci [y] per consesntire o [N] per negare:"
while :
do
    read -p 'comando ' risposta
    if [[ $risposta == "y" || $risposta == "Y" ]]
    then
        echo "Hai risposto Yup"
    break
    elif [[ $risposta == "n" || $risposta == "N" ]]
    then
        echo "Hai risposto NOPE"
    break
    else
        echo "coglione riprova!"
    fi
done


#read -n1 -p "iniziare esercizio? [y,n]" doit 
#case $doit in  
#  y|Y) echo " hai inserito Yup" ;; 
#  n|N) echo " Hai inserito Nope" ;; 
#_  *) echo inserire nuovamente la scelta ;; 
# esac
