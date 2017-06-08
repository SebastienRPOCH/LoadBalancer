FROM ubuntu

RUN apt-get update
RUN apt-get install -y dialog
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y dos2unix
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y haproxy

COPY haproxy.cfg /etc/haproxy/haproxy.cfg
COPY entrypoint.sh /entrypoint.sh
RUN dos2unix /entrypoint.sh
RUN chmod 744 /entrypoint.sh

EXPOSE 8088

ENTRYPOINT /entrypoint.sh
