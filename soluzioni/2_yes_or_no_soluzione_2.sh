#!/usr/bin/env bash

#a seconde all'insrimento di una stringa dell'utente si risponderà yup r nop o errote

echo "Inserisci 'Y', 'y', 'n' o 'N'"
read -r risp
if [ "$risp" = "n" ] || [ "$risp" = "N" ]; then
 echo "Nope"
 exit 0
elif [ "$risp" = "y" ] || [ "$risp" = "Y" ]; then
 echo "Yup"
 exit 0
else
 echo "How dare you!"
 exit 1
fi
