FROM wordpress:latest
WORKDIR /var/www/html
COPY . .
ENV WORDPRESS_DB_HOST=worddb.cbzqxdwcqpcp.us-east-1.rds.amazonaws.com
ENV WORDPRESS_DB_NAME=mydb
ENV WORDPRESS_DB_USER=admin
ENV WORDPRESS_DB_PASSWORD=srikanth12345
ENTRYPOINT ["docker-entrypoint.sh"]


