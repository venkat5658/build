
FROM ubuntu
RUN apt install apache2 -y 
WORKDIR /var/www/html
COPY  ./build/* /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
