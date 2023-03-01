FROM httpd

RUN rm -rf /usr/local/apache2/htdocs/index.html
ADD ./htdocs/ /usr/local/apache2/htdocs/
ADD ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf

