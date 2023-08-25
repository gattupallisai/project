FROM ubuntu:latest
RUN apt update -y && \
    apt install -y apache2 php tzdata
RUN a2enmod rewrite
WORKDIR /var/www/html
COPY . /var/www/html/
ENV DB_HOST appdb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com
ENV DB_NAME mydb
ENV DB_USER admin
ENV DB_PASSWORD srikanth12345
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]





