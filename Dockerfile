# centos7-updated
FROM centos:7

USER root

ENV BUILDER_VERSION 1.0

#Enable YUM repos
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

#Update
RUN yum update -y --nogpgcheck
RUN yum clean all

