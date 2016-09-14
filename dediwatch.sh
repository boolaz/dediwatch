#!/bin/bash

# Pensez à ajouter la ligne suivante dans votre Crontab (sans le #)
# * * * * * /usr/local/bin/dediwatch.sh >/dev/null 2>&1

# configuration de la machine a surveiller et du destinataire de l'email
url="https://www.online.net/fr/serveur-dedie/dedibox-st8"
recipient="foo@bar.com"

# surveillance
result=$(curl -s $url | grep -i "victime")
if [ ! -f /tmp/dedibox_envoye ]
then
    if [ "$result" = "" ]
    then
        echo "dispo"
        echo -e "DEDIBOX DISPO\n$url\n" | mail -s "dedibox dispo" $recipient
        touch /tmp/dedibox_envoye
    fi
fi
