FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY index.html /var/www/html/
COPY CSS /var/www/html/
COPY img /var/www/html/
COPY js /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
