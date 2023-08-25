FROM ubuntu:latest
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y 
RUN apt install -y apache2 php php-mysqlnd tzdata
WORKDIR /var/www/html
COPY project /var/www/html/
ENV DB_HOST appdb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com
ENV DB_NAME mydb
ENV DB_USER admin
ENV DB_PASSWORD srikanth12345
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]





