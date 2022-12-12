FROM httpd
WORKDIR /usr/local/htppd/htdocs/
COPY . /build/* /usr/local/htppd/htdocs/
EXPOSE 8080

