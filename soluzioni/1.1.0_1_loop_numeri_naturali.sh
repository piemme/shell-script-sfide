#!/usr/bin/env bash
# SFIDA N. 1

# Usa i cicli per visualizzare i numeri naturali da 1 a 50:
# 1.1.0 creazione ciclo dei numeri da 1 a 50
# creare un ciclo 'for' i cui parametri inizi con una variabile di valore 1,
# che non sia magiore di 50 e che aumenti di 1 ad ogni ciclo.
#-------------------------------------------------------------------------------------------

for (( i=1 ; i<=50 ; i++  )); # 'for' impone la condizione sulla variabile $i
do
    echo "$i" #'echo' stampa nel terminale il valore di $i
done # fine del ciclo

