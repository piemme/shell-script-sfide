#!/usr/bin/env bash
#SFIDA N. 2

#Leggere l'input utente (ammessi i caratteri 'Y', 'y', 'N', 'n').
#Se l'utente ha inserito Y' or 'y' visualizzare "YUP".
#Se ha inserito 'N' or 'n' visualizzare "NOPE".
#Se l'utente ha inserito un altro carattere, visualizzare un messaggio di errore.
# --------------------------------------------------------------------------------

echo "Inizializzare l'esercizio? [y,n]" #chiedere un input al users
while : #iniziare un ciclo 'while'
do
    read risposta #'read' inserisce input dentro la variabile 'risposta'
    if [[ $risposta == "y" || $risposta == "Y" ]]  # il ciclo 'if' elabora la risposta solo se uguale a 'y' o 'Y'
    then
        echo "YUP" # 'echo' stampa su terminale 'YUP'
    break
    elif [[ $risposta == "n" || $risposta == "N" ]] # 'elif' elabora la risposta se uguale a 'n' o 'N'
    then
        echo "NOPE"
    break
    else  # 'else' se non rispetta le precedenti condizioni
        echo "not found"
    fi
done