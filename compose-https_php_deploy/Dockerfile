FROM php:apache

EXPOSE 443

COPY ./htdocs/ /var/www/
COPY ./apache-conf/www.php.iaw.conf /etc/apache2/sites-available/www.php.iaw.conf

COPY ./certs/web-segura.crt /etc/ssl/certs/web-segura.crt
COPY ./certs/web-segura.key /etc/ssl/private/web-segura.key

RUN a2enmod ssl && a2ensite www.php.iaw && apache2ctl restart

