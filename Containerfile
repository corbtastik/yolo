# -------------------------------------------------------------------------------------------------
# Stage 1 - Create a production build of the reactjs application
# -------------------------------------------------------------------------------------------------
FROM localhost/yoloc:latest AS BUILDER
WORKDIR /tmp/yolo
COPY . /tmp/yolo
RUN jekyll build
# -------------------------------------------------------------------------------------------------
# Stage 2 - Create a runtime image for the reactjs application using apache-httpd as base image
# -------------------------------------------------------------------------------------------------
FROM registry.redhat.io/ubi8/ubi
LABEL maintainer="corbs"
ENV PORT 9696

RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos httpd -y && \
    yum clean all
RUN sed -ri -e "/^Listen 80/c\Listen ${PORT}" /etc/httpd/conf/httpd.conf && \
    chown -R yolo:yolo /etc/httpd/logs/ && \
    chown -R yolo:yolo /run/httpd/

USER yolo
EXPOSE ${PORT}
COPY --from=BUILDER /tmp/yolo/_site /var/www/html

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
