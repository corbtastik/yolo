# ------------------------------------------------------------------------------------------------------------------
# This image is used to transform assets,markdown,scss and templates into plain HTML,CSS and Javascript.
# ------------------------------------------------------------------------------------------------------------------
FROM registry.access.redhat.com/ubi8-minimal:8.7-923
USER root
LABEL maintainer="corbs"
# install gcc, gcc-c++, make, ruby, ruby-devel, jekyll
RUN microdnf update --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms -y && \
    microdnf install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms which gzip tar git make -y && \
    microdnf install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms gcc -y && \
    microdnf install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms gcc-c++ -y && \
    microdnf module enable --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms ruby:3.0 -y && \
    microdnf install --disablerepo=* --enablerepo=ubi-8-appstream-rpms --enablerepo=ubi-8-baseos-rpms ruby-devel -y && \
    gem install jekyll && \
    rm -rf /var/cache/yum