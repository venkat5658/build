FROM httpd:2.4
WORKDIR /usr/local/apache2/htdocs/
COPY  /build/* /usr/local/apache2/htdocs/
EXPOSE 8080
