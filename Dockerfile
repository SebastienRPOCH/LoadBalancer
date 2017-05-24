FROM haproxy:1.7
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY entrypoint.sh /entrypoint.sh

EXPOSE 27070

ENTRYPOINT /entrypoint.sh
