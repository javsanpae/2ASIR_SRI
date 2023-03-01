FROM httpd

WORKDIR /usr/local/apache2/

ADD ./auth ./auth
COPY ./conf/httpd.conf ./conf/httpd.conf
ADD ./htdocs ./htdocs

RUN apachectl restart
