# Osservazioni 

## Esercizi versione 1.0.0


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

### 1.1.0_3_comparazione_numeri.sh

### 1.1.0_4_conserva_la_home.sh

### 1.1.0_5_backup_buckup.sh










