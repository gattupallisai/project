FROM php:7.4-apache
WORKDIR /var/www/html
RUN rm -rvf .
COPY . /var/www/html/
ENV DB_HOST your-rds-endpoint
ENV DB_NAME your-db-name
ENV DB_USER your-db-username
ENV DB_PASSWORD your-db-password
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite
EXPOSE 80
CMD ["apache2-foreground"]



