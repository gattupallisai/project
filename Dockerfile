FROM ubuntu:latest
RUN apt update -y
RUN apt install apache2 php php-mysqlnd -y
RUN a2enmod rewrite
WORKDIR /var/www/html
COPY . /var/www/html/
ENV DB_HOST appdb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com
ENV DB_NAME mydb
ENV DB_USER admin
ENV DB_PASSWORD srikanth12345
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]





