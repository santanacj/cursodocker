FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y vim nginx
ADD index.html /var/www/
ADD curso.conf /etc/nginx/conf.d/
RUN rm -f /etc/nginx/sites-enabled/default

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

