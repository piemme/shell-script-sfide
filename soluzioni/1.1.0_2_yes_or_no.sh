#!/usr/bin/env bash
#SFIDA N. 2

#Leggere l'input utente (ammessi i caratteri 'Y', 'y', 'N', 'n').
#Se l'utente ha inserito Y' or 'y' visualizzare "YUP".
#Se ha inserito 'N' or 'n' visualizzare "NOPE".
#Se l'utente ha inserito un altro carattere, visualizzare un messaggio di errore.
# --------------------------------------------------------------------------------
#chiedere un input al users
echo "Inizializzare l'esercizio? [y,n]"
#iniziare un ciclo 'while' che elabori la risposta
while :
do
    # il 'READ' effetua la lettura della 'risposta' inserita nel terminale
    read risposta
    # il ciclo 'if' elabora la risposta solo se uguale a 'y' o 'Y'.
    if [[ $risposta == "y" || $risposta == "Y" ]]
    then
        # 'echo' stampa su terminale 'YUP'
        echo "YUP"
        # 'break' rompe il ciclo.
    break
    # 'elif' elabora la risposta se uguale a 'n' o 'N'.
    elif [[ $risposta == "n" || $risposta == "N" ]]
    then
        # stampa 'NOPE'
        echo "NOPE"
    break
    # 'else' ove la risposta non è come le precetendi condizioni
    else
        # stampa 'not found'
        echo "not found"
    fi
done

#---------------------------------------------------------------------------

#tali scelte sono state prese alla base di esercizi molto simili svolti nel corso di java.
#ho ricontrollato la sintass  i che prevedeva qualche modifica rispetto al altro linguaggio.
#i link forniti mi sono stati d'aiuto 'https://linuxconfig.org/bash-scripting-tutorial-for-beginners'.
