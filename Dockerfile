FROM haproxy:1.7

RUN apt-get update
RUN apt-get install -y dialog
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y dos2unix
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y sudo

RUN route delete default
RUN route add default gw 172.10.10.3 eth0

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY entrypoint.sh /entrypoint.sh

EXPOSE 27070

ENTRYPOINT /entrypoint.sh
