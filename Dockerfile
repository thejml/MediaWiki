FROM mediawiki:legacylts

USER root
RUN apt-get update && apt-get upgrade -y && apt-get install unzip wget -y
USER www-data
RUN wget https://github.com/dolfinus/DarkVector/archive/master.zip && unzip master.zip && mv DarkVector-master /var/www/html/skins/DarkVector

COPY LocalSettings.php /var/www/html/
