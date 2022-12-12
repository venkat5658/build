FROM httpd
WORKDIR /usr/local/htppd/htdocs/
COPY . . 
EXPOSE 8080

