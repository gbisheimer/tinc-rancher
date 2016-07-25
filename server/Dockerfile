FROM ubuntu:xenial
MAINTAINER ByS Control "info@bys-control.com.ar"

# Remove SUID programs
# RUN for i in `find / -perm +6000 -type f 2>/dev/null`; do chmod a-s $i; done
RUN apt-get update && apt-get install -y --no-install-recommends liblzo2-2 libssl1.0.0 init-system-helpers iptables && rm -rf /var/lib/apt/lists/*

ADD . /root

RUN dpkg -i /root/tinc_1.0.28-1_amd64.deb && rm /root/tinc_1.0.28-1_amd64.deb && \
mv /root/cfg/* /etc/tinc/ && \
chmod 775 /etc/tinc/vpn_clientes/tinc-up && \
chmod 775 /etc/tinc/vpn_clientes/tinc-down

EXPOSE 655/tcp 655/udp
VOLUME /etc/tinc/hosts
CMD ["/root/init.sh"]