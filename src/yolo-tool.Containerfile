FROM registry.access.redhat.com/ubi8/ubi:8.7-1054

USER root
LABEL maintainer="corbs"
LABEL name="yolo-tool"
LABEL version="1.0"
LABEL summary="A container image for working with Yolo single-page sites."
LABEL description="A container image for working with Yolo single-page sites."

ARG YUM_FLAGS="--disableplugin=subscription-manager --disablerepo=* --enablerepo=ubi-8-baseos-rpms --enablerepo=ubi-8-appstream-rpms"
ARG JQ_VERSION="jq-1.6"
ARG JQ_DOWNLOAD_URL="https://github.com/stedolan/jq/releases/download/${JQ_VERSION}/jq-linux64"
ARG YQ_VERSION="v4.30.8"
ARG YQ_DOWNLOAD_URL="https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/yq_linux_amd64"

COPY ./bash /yolo-tool

ENV PATH /yolo-tool:${PATH}

RUN yum update ${YUM_FLAGS} -y && \
    yum install ${YUM_FLAGS} which gzip tar git make -y && \
    yum install ${YUM_FLAGS} gcc gcc-c++ -y && \
    yum module enable ${YUM_FLAGS} ruby:3.0 -y && \
    yum install ${YUM_FLAGS} ruby-devel -y && \
    gem install jekyll && \
    curl -OL ${JQ_DOWNLOAD_URL} && \
    mv jq-linux64 /usr/local/bin/jq && \
    chmod 755 /usr/local/bin/jq && \
    curl -OL ${YQ_DOWNLOAD_URL} && \
    mv yq_linux_amd64 /usr/local/bin/yq && \
    chmod 755 /usr/local/bin/yq && \
    chmod 755 /yolo-tool/*.sh && \
    yum clean all && \
    rm -rf /var/cache/* /var/log/dnf*
