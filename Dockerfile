FROM php:7.4-apache
WORKDIR /var/www/html
RUN rm -rvf .
COPY . /var/www/html/
ENV DB_HOST worddb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com
ENV DB_NAME mydb
ENV DB_USER admin
ENV DB_PASSWORD srikanth12345
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite
EXPOSE 80
CMD ["apache2-foreground"]



