FROM ubuntu:22.04
RUN apt-get update && apt-get install apache2 -y
ADD . /var/www/html/
ENTRYPOINT ["apache2ctl"]
CMD ["-D","FOREGROUND"]
