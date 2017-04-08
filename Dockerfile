FROM centos:6.8
MAINTAINER Hyunun Kim <nnhope@hotmail.com>

# basic install
RUN yum -y groupinstall "Development Tools" # For g++, make, et. al.
RUN yum -y install boost-devel # For Boost
RUN yum -y install openssl-devel # For OpenSSL

# set workdir
RUN mkdir src/
WORKDIR src/

CMD /bin/bash

