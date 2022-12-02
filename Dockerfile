# CTUMF2 cloud technology homework
FROM       registry.access.redhat.com/ubi7/ubi-minimal
LABEL      description="Cloud technolgoy homework image"
MAINTAINER Attila Barsony 
RUN        microdnf install -y httpd 
EXPOSE     80
ENV        LogLevel "info"
ADD        ./source /var/www/html 
ENTRYPOINT ["/usr/sbin/httpd"]
CMD        ["-D", "FOREGROUND"]
