FROM php:7.4-apache
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo pdo_mysql zip
RUN a2enmod rewrite
RUN apt update -y
RUN apt install php-mysqlnd apache2 -y
WORKDIR /var/www/html
COPY . /var/www/html/
ENV DB_HOST appdb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com
ENV DB_NAME mydb
ENV DB_USER admin
ENV DB_PASSWORD srikanth12345
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]



