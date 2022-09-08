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
if (( $X < $Y )) ; then # 'if' se il valore di x è minore di y
    echo "$X è minore di $Y" #stampa il valore di X 'èminore di' Y
elif (( $X > $Y )) ; then #se il valore è maggiore
    echo "$X è maggiore di $Y"
elif (( $X == $Y )) ; then #se i valori sono uguali
    echo "$X è uguale a $Y"
fi