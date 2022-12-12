FROM httpd
WORKDIR /usr/local/htppd/htdocs/
ENV PATH=/usr/local/htppd/htdocs:$PATH
COPY . /usr/local/htppd/htdocs/
EXPOSE 8080
CMD ["htppd"]
