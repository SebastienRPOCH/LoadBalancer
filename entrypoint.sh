route del default
ifconfig eth0 172.10.10.11
route add default gw 172.10.10.10 eth0
/etc/init.d/haproxy start
/bin/sh