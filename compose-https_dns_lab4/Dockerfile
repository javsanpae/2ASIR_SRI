FROM httpd

EXPOSE 443

COPY ./apache-conf/httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf
COPY ./apache-conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./certs/web-segura.key /usr/local/apache2/conf/web-segura.key
COPY ./certs/web-segura.crt /usr/local/apache2/conf/web-segura.crt

