FROM nginx:latest AS dev
COPY index.html /usr/share/nginx/html

FROM centos:latest AS prod
ENV Version_OS=WINDOWS
RUN echo ${Version_OS} \
    && yum -y update \
    && yum -y install nano

