#open with vim editor Dockerfile

FROM  redhat/ubi8:latest
RUN  yum install httpd -y
COPY  ./index.html  var/www/html/index.html
EXPOSE   80
CMD    ["/usr/sbin/httpd", "_DFOREGROUND"]

#save the file
