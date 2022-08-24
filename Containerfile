#--------------------------------------------------------------------------------------------------
# Yolo served by apache httpd
#--------------------------------------------------------------------------------------------------
FROM registry.redhat.io/ubi8/httpd-24:latest
COPY .site-build/yolo/ /var/www/html
CMD run-httpd