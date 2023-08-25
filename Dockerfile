FROM ubuntu:latest
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
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





