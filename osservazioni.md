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

Attenzione! Il listing delle directory deve essere *ricorsivo*.



### 1.1.0_5_backup_buckup.sh

Il comando: ```find /home/gerson``` non è portabile. Deve essere possibile eseguirlo sulla home directory di chiunque esegua il comamdo.
