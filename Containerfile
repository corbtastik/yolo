FROM registry.redhat.io/ubi8/httpd-24:latest
COPY .container-build/sampler/ /var/www/html
COPY _site/ /var/www/html
CMD run-httpd