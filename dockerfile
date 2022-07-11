FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y


COPY 000-default.conf /etc/apache2/sites-available
ADD dist /var/www/html/



CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
EXPOSE 80

