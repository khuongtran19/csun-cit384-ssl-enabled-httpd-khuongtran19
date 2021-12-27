FROM ubuntu

RUN apt-get update
RUN apt-get install -y apache2

COPY ./ ~/usr/local/apache2/htdocs
RUN ~/usr/local/apache2/htdocs/vhost.conf
EXPOSE 80 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
