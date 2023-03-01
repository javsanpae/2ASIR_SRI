FROM internetsystemsconsortium/bind9:9.18

WORKDIR /etc/bind
COPY conf/named.conf.local .
COPY conf/named.conf.options .

COPY zones/10.0.10.dns /var/lib/bind/10.0.10.dns
COPY zones/jsp.local.dns /var/lib/bind/jsp.local.dns