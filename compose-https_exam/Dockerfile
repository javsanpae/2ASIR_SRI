FROM fernandoraya/2022-2023-http-examen-v2:latest

WORKDIR /etc/apache2

EXPOSE 443
EXPOSE 80

COPY htdocs /var/www/seguro
COPY certs/seguro.zaidin.izv.crt conf/seguro.zaidin.izv.crt
COPY certs/seguro.zaidin.izv.key conf/seguro.zaidin.izv.key
COPY conf/apache2.conf apache2.conf
COPY conf/seguro.zaidin.izv.conf sites-enabled/seguro.zaidin.izv.conf
COPY auth/htpasswd_digest auth/.htpasswd_digest
COPY auth/htgroups auth/.htgroups

RUN a2enmod ssl
RUN a2enmod auth_digest
RUN a2enmod authz_groupfile
RUN a2enmod userdir
RUN apache2ctl restart
