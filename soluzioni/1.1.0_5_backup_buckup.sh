#SFIDA N. 5

#Lo script shell dovrà archiviare come "tarball" (*.tar.gz file)
# tutti i file della home directory che sono stati modificati nelle ultime 48 ore.
#(Usa il comando find).
#Il nome del tarball deve conservare la data in cui è stato eseguito.

#!/bin/bash -x
find /home/gerson -mtime -2 -exec tar -cvzaf 25.07.2022.tar.gz {} \;