# ------------------------------------------------------------------------------------------------------------------
# This image is used to transform assets,markdown,scss and templates into plain HTML,CSS and Javascript.
# ------------------------------------------------------------------------------------------------------------------
FROM registry.access.redhat.com/ubi8
USER root
LABEL maintainer="corbs"
# install gcc, gcc-c++, make, ruby, ruby-devel, jekyll
RUN yum update --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms gcc -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms gcc-c++ -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms make -y && \
    yum module install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms ruby:3.0 -y && \
    yum install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms ruby-devel -y && \
    gem install jekyll && \
    rm -rf /var/cache/yum