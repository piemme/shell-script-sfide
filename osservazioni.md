# Osservazioni 

## Esercizi versione 1.0.0

Come mai i file si chiamano "1.1.0_" quando la versione è 1.0.0?

### 1.1.0_1_loop_numeri_naturali.sh

La "shebang" deve essere necessariamente nella prima riga del file, altrimenti lo script non viene eseguito correttamente.

La [shebang](https://bash.cyberciti.biz/guide/Shebang) `#!/bin/bash` non è portabile tra le diverse distribuzioni di linux. Meglio usare: `#!/usr/bin/env bash`, vedi https://www.cyberciti.biz/tips/finding-bash-perl-python-portably-using-env.html.

I commenti devono essere organizzati per favorire la massima leggibilità. Servono soprattutto a chi leggerà.
Meglio non mischiare commenti e codice. I commenti non devono essere troppo lunghi: rischiano di non essere letti.

Se devi commentare il codice, meglio i commenti (brevi!) su una sola linea:

```
for ((i = 1; i <= 50; i++)); do
    echo "numero naturale: $i" # il comando 'echo' stampa nel terminale il valore di $i
done
```

### 1.1.0_2_yes_or_no.sh

Eseguendo lo script ottengo:
```
./1.1.0_2_yes_or_no.sh           
Inizializzare l'esercizio?..inserisci [y] per consesntire o [N] per negare:
y
./1.1.0_2_yes_or_no.sh: 16: [[: not found
./1.1.0_2_yes_or_no.sh: 16: y: not found
./1.1.0_2_yes_or_no.sh: 22: [[: not found
./1.1.0_2_yes_or_no.sh: 22: y: not found
riprova!

```

Mettendo la shebang nella riga n. 1 tutto funziona correttamente:

```
./1.1.0_2_yes_or_no.sh
Inizializzare l'esercizio?..inserisci [y] per consesntire o [N] per negare:
y
Hai risposto Yup
```

```
./1.1.0_2_yes_or_no.sh
Inizializzare l'esercizio?..inserisci [y] per consesntire o [N] per negare:
N
Hai risposto NOPE
```

## Esercizi versione 1.1.0


### 1.1.0_4_conserva_la_home.sh

Attenzione! Il listing delle directory deve essere *ricorsivo*


### 1.1.0_5_backup_buckup.sh

Il comando: ```find /home/gerson``` non è portabile. Deve essere possibile eseguirlo sulla home directory di chiunque esegua il comamdo.

## Esercizi versione 1.2.0

Rinominare i nomi dei file nella directory ```soluzioni```: togliere i riferimenti al versionamento.
I nomi devono essere *semplici* e *comprensibili* la versioni stanno nel sistema di versionamento (git), non nei nomi dei file.

### 1.1.0_3_comparazione_numeri.sh

Guarda l'output di queste 3 esecuzioni e controlla bene la catena di ```if``` e gli operatori di comparazione:

```
$ ./soluzioni/1.1.0_3_comparazione_numeri.sh 
Inserisci il valore: 
10
inserisci il secondo valore: 
10
10 è uguale a 10
$ ./soluzioni/1.1.0_3_comparazione_numeri.sh
Inserisci il valore: 
10
inserisci il secondo valore: 
11
10 è minore di 11
$ ./soluzioni/1.1.0_3_comparazione_numeri.sh
Inserisci il valore: 
10
inserisci il secondo valore: 
9
10 è minore di 9
```

Controlla perché risulta che ```10 è minore di 9```.


### 1.1.0_5_backup_buckup.sh

Il nome del file deve essere dinamico, relativo al momento in cui viene eseguito il comando.
Quindi nel comando
```
find $Home -mtime -2 -exec tar -cvzaf 05.09.2022.tar.gz {} \;
```

non dovresti mettere una data come ad esempio `05.09.2022`

Correggi anche il nome del file: buckup --> backup.


## Esercizi versione 1.2.1

Il file `soluzioni/09-07-22.tar.gz` non deve essere immesso nel sistema di versionamento: è un file binario, risultato di un'operazione di archiviazione.

I file in `soluzioni/*` non hanno i permessi di esecuzione.

### 4_conserva_la_home.sh

Attenzione! Il listing delle directory deve essere *ricorsivo*. Il flag `-r` non aggiunge la ricorsività. `-r` sta per `reverse`: inverte l'ordinamento.

### 5_backup_backup.sh

La combinazione di `find` e `tar` va esaminata attentamente. Per come è impostato il comando:
`find ~ -mtime -2 -exec tar -czavf "$(date +"%m-%d-%y")".tar.gz {} \;` 

`find` chiamerà `-exec tar` per ogni singolo file che trova, mentre noi vogliamo che archivi tutti i file in un solo file archivio.

Meglio usare l'opzione `xargs` al posto di `exec`.

Per verificare che lo script funzioni, esegui un'operazione alla volta:

- elenca e conta tutti i file modificati negli ultimi due giorni
- conta i file risultato dell'ouput dell'istruzione di find + tar
- confrontali




