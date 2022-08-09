#--------------------------------------------------------------------------------------------------
# jekyll image to run "jekyll build"
#--------------------------------------------------------------------------------------------------
ARG JEKYLL_VERSION=4.2.2
FROM docker.io/jekyll/jekyll:${JEKYLL_VERSION} as builder
WORKDIR /srv/jekyll
COPY . /srv/jekyll
RUN jekyll build
#--------------------------------------------------------------------------------------------------
# Solo runtime image
#--------------------------------------------------------------------------------------------------
FROM registry.redhat.io/ubi8/httpd-24:latest
COPY --from=builder /srv/jekyll/_site /var/www/html
CMD run-httpd