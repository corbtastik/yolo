FROM registry.redhat.io/ubi8/httpd-24:latest
COPY .site-build/sampler/ /var/www/html
CMD run-httpd