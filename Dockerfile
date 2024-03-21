FROM ubuntu 
EXPOSE 80
RUN apt-get update -y && apt-get install -y apache2
COPY . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
