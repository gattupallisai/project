FROM ubuntu:latest
RUN apt update -y
RUN apt install git unzip tzdata -y
RUN apt install php apache2 php-mysqlnd -y
WORKDIR /var/www/html
RUN rm -rf /var/www/html/*
ENV WORDPRESS_DB_NAME=wordpressdb
ENV WORDPRESS_DB_USER=admin
ENV WORDPRESS_DB_PASSWORD=srikanth12345
ENV RDS_ENDPOINT=wordpressdb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com


EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND
