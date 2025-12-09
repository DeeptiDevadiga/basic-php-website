FROM php:7.4-apache
RUN apt-get update -y
RUN rm -f /var/www/html/index.html
ADD . /var/www/html/
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
