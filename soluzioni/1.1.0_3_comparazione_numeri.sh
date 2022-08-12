#!/usr/bin/env bash
#SFIDA N. 3

#Dati due numeri interi (X e Y), inseriti dall'utente come input, visualizzare uno dei seguenti casi:
#- X minore Y
#- X maggiore Y
#- X uguale Y

#-----------------------------------------------------------------------------------------------------


echo "Inserisci il valore: "
read X
echo "inserisci il secondo valore: "
read Y

# 'if' se il valore di x è minore di y 
if [[ $X < $Y ]]
then
    # stampa la condizione
    echo "$X è minore di $Y"
# 'elif' se x è maggiore di y
elif [[ $X > $Y ]]
then
    # stampa la condizione
    echo "$X è maggiore di $Y"
# se i valori sono uguale 
elif [[ $X == $Y ]]
then
    #stampa questa condizione
    echo "$X è uguale a $Y"
fi # conclusione del ciclo

#-------------------------------------------------------------------------------------------------------
#prendendo d'esempio l'esercizio 2 , questo esercizio richiedeva le stesse conoscenze.
#utilizzo del comando 'echo', 'read', creazioni di variabili e del ciclo 'if'