FROM registry.redhat.io/ubi8/httpd-24:latest
COPY .container-build/solo/ /var/www/html
COPY _site/ /var/www/html
CMD run-httpd