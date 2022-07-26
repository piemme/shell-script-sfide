#!/usr/bin/env bash
# see https://en.wikipedia.org/w/index.php?title=Shebang_(Unix)&oldid=878552871#Portability

# SFIDA N. 1
# Usa i cicli per visualizzare i numeri naturali da 1 a 50.
# Si aspetta un output del tipo:

# SOLUZIONE N. 1
# creare un ciclo che come condizione, crei una variabile $i che deve partire con valore 1,
# non essere maggiore di 50 ed infine che incrementi di 1 il valore di $i ogni volta che si ripete il ciclo.
# al termine del ciclo si ha una lista di numeri naturali, dal 1 al 50

for ((i = 1; i <= 50; i++)); do
    echo "numero naturale: $i" # il comando 'echo' stampa nel terminale il contenuto, in questo caso, una stringa e il valore di $i
done
