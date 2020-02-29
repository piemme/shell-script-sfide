#!/usr/bin/env bash

#esercizio di confronto di due numeri inseriti dall'utente     

echo "inserisci due valori per x e y"
read -r x y                                                    
if [ "$x" -gt "$y" ]; then                                         
 echo "La variabile x($x) è maggiore di y($y)"
 exit 0
elif [ "$x" -lt "$y" ]; then                                            
 echo "La variabile x($x) è minore di y($y)"
 exit 0
elif [ "$x" -eq "$y" ]; then                                           
 echo "La variabile x($x) è uguale a y($y)"                     
 exit 0
else                                                        
  echo "i valori non sono validi"                                  
 exit 1
fi
