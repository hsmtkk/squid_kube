FROM hsmtkk/squid:4.11

COPY ./squid.conf /usr/local/squid/etc/squid.conf
COPY ./myCA.pem /usr/local/squid/etc/myCA.pem
COPY ./entrypoint.sh /entrypoint.sh

RUN chown nobody:nogroup /usr/local/squid/var/logs

ENV LD_LIBRARY_PATH=/usr/local/openssl/lib

RUN /usr/local/squid/sbin/squid -k parse

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]

