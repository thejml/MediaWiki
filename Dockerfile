FROM mediawiki:latest

USER root
RUN apt-get update && apt-get upgrade -y
USER www-data
