FROM httpd:2.4

ARG BUILD_DIR

WORKDIR /usr/local/apache2/htdocs/

COPY ${BUILD_DIR} ./