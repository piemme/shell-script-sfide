#SFIDA N. 2

#Leggere l'input utente (ammessi i caratteri 'Y', 'y', 'N', 'n').
#Se l'utente ha inserito Y' or 'y' visualizzare "YUP".
#Se ha inserito 'N' or 'n' visualizzare "NOPE".
#Se l'utente ha inserito un altro carattere, visualizzare un messaggio di errore.
#!/bin/bash
#chiedere un input al users
echo "Inizializzare l'esercizio?..inserisci [y] per consesntire o [N] per negare:"
#iniziare un ciclo che elabori la risposta
while :
do
    #questo comando permette la cattura della risposta dal terminale, quindi creare una variabile con valore, la risposta del users
    read risposta
    #questo ciclo elabora la risposta positiva, la condizione prevede che la risposta sia uguale alle lette 'y,Y'
    if [[ $risposta == "y" || $risposta == "Y" ]]
    then
        #se la condizione viene rispettata allora mi manda sul terminale la stringa dopo il comando 'echo'
        echo "Hai risposto Yup"
    break
    #se la condizione del primo ciclo non è rispettata parte il secondo ciclo che pretende la risposta uguale a 'n,N'
    elif [[ $risposta == "n" || $risposta == "N" ]]
    then
        #manda in stampa la stringa
        echo "Hai risposto NOPE"
    break
    #se la risposta non rispetta nessuna delle condizioni precedenti ti incita a riprovare.
    else
        echo "riprova!"
    fi
done

#tali scelte sono state prese alla base di esercizi molto simili svolti nel corso di java.
#ho ricontrollato la sintassi che prevedeva qualche modifica rispetto al altro linguaggio.
#i link forniti mi sono stati d'aiuto [link1]('https://linuxconfig.org/bash-scripting-tutorial-for-beginners').ù
