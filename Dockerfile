
FROM ubuntu
Run apt install apache2
WORKDIR /var/www/html
COPY  ./build/* /var/www/html
EXPOSE 80
