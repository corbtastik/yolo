# -------------------------------------------------------------------------------------------------
# Transform yolo content into plain HTML,CSS and Javascript to be served by apache below.
# -------------------------------------------------------------------------------------------------
FROM localhost/yoloc:latest AS BUILDER
WORKDIR /tmp/yolo
COPY . /tmp/yolo
RUN jekyll build
# -------------------------------------------------------------------------------------------------
# Yolo runtime image based on apache, that serves the build site on port 9696.
# -------------------------------------------------------------------------------------------------
FROM registry.access.redhat.com/ubi8
LABEL maintainer="corbs"
ENV PORT 9696
RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms httpd -y && \
    yum clean all
RUN sed -ri -e "/^Listen 80/c\Listen ${PORT}" /etc/httpd/conf/httpd.conf && \
    chown -R apache:apache /etc/httpd/logs/ && \
    chown -R apache:apache /run/httpd/
USER apache
EXPOSE ${PORT}
COPY --from=BUILDER /tmp/yolo/_site /var/www/html
# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]