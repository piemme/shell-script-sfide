#!/usr/bin/env bash
#SFIDA N. 3

#Dati due numeri interi (X e Y), inseriti dall'utente come input, visualizzare uno dei seguenti casi:
#- X minore Y
#- X maggiore Y
#- X uguale Y
#-----------------------------------------------------------------------------------------------------
echo "Inserisci il valore: "
read X # x contine il primo valore
echo "inserisci il secondo valore: "
read Y # y contiene il secondo valore 
if [[ $X < $Y ]] # 'if' se il valore di x è minore di y
then
    echo "$X è minore di $Y" #stampa il valore di X 'èminore di' Y
elif [[ $X > $Y ]] #se il valore è maggiore
then
    echo "$X è maggiore di $Y"
elif [[ $X == $Y ]] #se i valori sono uguali
then
    echo "$X è uguale a $Y"
fi