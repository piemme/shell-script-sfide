# Commento agli esercizi sulla shell

Si fa riferimento alla issue <https://git.eurixgroup.com/learning-training/stairway-frontend/issues/9>

## Linux: creazione utente

Utente ```respondeo``` creato senza la bash: in ```/etc/passwd``` la shell assegnata all'utente era ```/bin/sh``` invece doveva essere ```/bin/bash```.

Come è stato creato l'utente? L'hai creato da utente root?
La prossima volta utilizzare il programma "adduser", è il modo più sicuro.
Nella manpage di adduser si legge:

> adduser  and  addgroup add users and groups to the system according to command line options and configuration information in /etc/adduser.conf.  They are *friendlier* front ends to the low level tools like useradd, groupadd and  usermod  programs,  by default choosing Debian policy conformant UID and GID values, creating a home directory with skeletal configuration, running a custom script, and other features.

Il principio è che ```adduser``` fa cose (_creating a home directory with skeletal configuration, running a custom script, ..._) che altrimenti dovrebbe fare l'utente con strumenti di più basso livello.
Morale: spendere più tempo PRIMA per capire quale sia il comando migliore, specialmente in un caso come questo di operazione che dovrebbe essere abituale: creare un utente in un sistema operativo dovrebbe essere un'operazione banale.

## Linux: file nella home directory di respondeo

```bash
root@ip-172-31-16-223:~# ls -la /home/respondeo/
drwxr-xr-x 3 respondeo respondeo 4096 Feb 16 16:40 .
drwxr-xr-x 5 root      root      4096 Feb 16 17:13 ..
-rw-r--r-- 1 respondeo respondeo  220 Apr  4  2018 .bash_logout
-rw-r--r-- 1 respondeo respondeo 3771 Apr  4  2018 .bashrc
-rw-r--r-- 1 respondeo respondeo  807 Apr  4  2018 .profile
-rw------- 1 respondeo respondeo  763 Feb 16 16:40 .viminfo
drwxrwxrwx 3 respondeo respondeo 4096 Feb 14 11:34 esercizi
```

La directory esercizi ha una visibilità troppo elevata: è leggibile, scrivibile, eseguibile da tutti gli utenti del sistema operativo. E' sufficiente che sia leggibile ed eseguibile da "tutti".
Occorre tener presente il [principio del privilegio minimo](https://it.wikipedia.org/wiki/Principio_del_privilegio_minimo), in tutti i contesti in cui si opera.
Vedi: http://wwwcdf.pd.infn.it/AppuntiLinux/a232.htm

```bash
root@ip-172-31-16-223:~# ls -la /home/respondeo/esercizi/
total 32
drwxrwxrwx 3 respondeo respondeo 4096 Feb 14 11:34 .
drwxr-xr-x 3 respondeo respondeo 4096 Feb 16 16:40 ..
-rwxrwxr-x 1 respondeo respondeo  115 Feb 14 10:57 1_loop_numeri_naturali.txt
-rwxrwxr-x 1 respondeo respondeo  259 Feb 14 10:57 2_yes_or_no.txt
-rwxrwxr-x 1 respondeo respondeo  154 Feb 14 10:57 3_comparazione_numeri.txt
-rwxrwxr-x 1 respondeo respondeo  159 Feb 14 10:57 4_conserva_la_casa.txt
-rwxrwxr-x 1 respondeo respondeo  253 Feb 14 10:57 5_backup_backup.txt
drwxrwxrwx 2 ubuntu    ubuntu    4096 Feb 14 11:46 soluzioni
```

Anche qui sarebbe stato meglio non "rivelare" da quale utente provengono i dati: la directory "soluzioni" risulta di proprietà di un altro utente (```ubuntu```).

## Script di shell: osservazioni generali

Bene mettere assieme problemi e soluzioni.
Tutti i file dovrebbero avere estensione .sh in modo che si capisca che sono file shell eseguibili.
Un file senza estensione non fa capire cosa contenga.
I nomi dei file dovrebbero essere più parlanti: "1_soluzione" non ci aiuta a capire cosa è o a cosa serve.
Nei nomi dei problemi, avevo conservato un'indicazione, es. "1_loop_numeri_naturali.txt".
E' essenziale nominare le cose in modo significativo, a tutti i livelli.

La prima linea di tutti gli script, la "shebang" è scritta in maniera obsoleta, meglio la nuova sintassi:
<https://github.com/dylanaraps/pure-bash-bible#obsolete-syntax>

Bene scrivere un commento per ricordare quale sia il problema o l'esercizio da risolvere.

In generale, quando si usano i loop e le espressioni condizionali, è essenziale indentare il codice.
Si indenta sempre in modo coerente, usando gli spazi (non le tabulazione, fonte di estremo dolore).
Dopo l'istruzione di commento ("#") si mette uno spazio.

### Script: 2_soluzione

Come mai le parentesi tonde associate al carattere di escape? Per confrontare una stringa non sono necessarie.
Appensantiscono sintassi e leggibilità.
Esempio:

```bash
if [ \( "$risp" = "n" \) ] || [ \( "$risp" = "N" \) ]; then
vs.
if [ "$risp" = "n" ] || [ "$risp" = "N" ]; then
```

La logica di if/else va riscritta: deve essere chiaro, a chi legge il codice, che ci sono 3 possibili esiti.
Bene l'exit status a 1 quando c'è un errore.

### Script: 3_soluzione

Forse non era terminato, la lettura dell'input utente e la logica mi sembra non funzionino.
Non riesco ad inserire due numeri.
Nella logica di comparazione, gli operatori  > e < con il carattere di escape sono vecchie versioni degli operatori non presenti in tutte le shell.
Per cui:

```bash
if [ "$x" \> "$y" ]
diventa
if [ $x -gt $y ]
```

Vedi:
<https://www.linuxtopia.org/online_books/advanced_bash_scripting_guide/comparison-ops.html>
<http://mywiki.wooledge.org/BashFAQ/031>

Inoltre ho riscritto if/else con if/elseif/else.

Nell'esercizio si chiedeva di mostrare anche X minore Y.

Nell'output deve essere chiaro di quale variabile si tratta (x o y) e non del numero, altrimenti non è chiaro a quale dei due numeri ci si riferisce.

TO BE CONTINUED...
