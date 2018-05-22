FROM centos
MAINTAINER mohitgupta.721@rediffmail.com
RUN yum install httpd -y
EXPOSE 80
ADD index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
