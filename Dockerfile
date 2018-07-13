FROM registry.fedoraproject.org/fedora:28
MAINTAINER Jiri Stransky <jistr@jistr.com>

RUN yum -y update; yum clean all

COPY build.sh /root/build.sh
RUN /root/build.sh

COPY files /

EXPOSE 3478 5349

USER coturn

CMD ["/usr/local/bin/container_coturn"]
