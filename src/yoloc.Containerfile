# ------------------------------------------------------------------------------------------------------------------
# This image is used to transform assets,markdown,scss and templates into plain HTML,CSS and Javascript.
# ------------------------------------------------------------------------------------------------------------------
FROM registry.redhat.io/ubi8/ubi
USER root
LABEL maintainer="corbs"
# install gcc, gcc-c++, make, ruby, ruby-devel, jekyll
RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos gcc -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos gcc-c++ -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos make -y && \
    yum module install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos ruby:3.0 -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream --enablerepo=ubi-8-baseos ruby-devel -y && \
    gem install jekyll && \
    rm -rf /var/cache/yum