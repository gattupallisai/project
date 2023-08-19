FROM ubuntu:latest
RUN apt update -y
RUN apt install git unzip tzdata -y
RUN apt install php apache2 php-mysqlnd -y
WORKDIR /var/www/html
RUN rm -rf /var/www/html/*
 ENV WORDPRESS_DB_NAME
ENV WORDPRESS_DB_USER
ENV WORDPRESS_DB_PASSWORD
ENV RDS_ENDPOINT

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND
