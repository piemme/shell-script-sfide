#!/bin/bash

#SFIDA N. 1

#Usa i cicli per visualizzare i numeri naturali da 1 a 50.
#Si aspetta un output del tipo:

#1.1.0 creazione ciclo dei numeri da 1 a 50

#creare un ciclo che come condizione, crei una variabile $i che deve partire con valore 1,
# non essere maggiore di 50 ed infine che incrementi di 1 il valore di $i ogni volta che si ripete il ciclo. 
for (( i=1 ; i<=50 ; i++  ));
do
#il comando 'echo' stampa nel terminale il contenuto, in questo caso, una stringa e il valore di $i 
    echo "numero naturale: $i"
done
#al termine del ciclo si ha una lista di numeri naturali, dal 1 al 50

