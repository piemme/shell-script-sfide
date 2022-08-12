#!/usr/bin/env bash
#SFIDA N. 3

#Dati due numeri interi (X e Y), inseriti dall'utente come input, visualizzare uno dei seguenti casi:
#- X minore Y
#- X maggiore Y
#- X uguale Y


echo "Inserisci il primo numero: .."
read X
echo "inserisci il secondo numero: .."
read Y
if [[ $X < $Y ]]
then
    echo "$X è minore di $Y"
elif [[ $X > $Y ]]
then
    echo "$X è maggiore di $Y"
elif [[ $X == $Y ]]
then
    echo "$X è uguale a $Y"
fi
#prendendo d'esempio l'esercizio 2 , questo esercizio richiedeva le stesse conoscenze.
#utilizzo del comando 'echo', 'read', creazioni di variabili e del ciclo 'if'