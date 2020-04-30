FROM hsmtkk/squid:4.11

COPY ./squid/squid.conf /usr/local/squid/etc/squid.conf
COPY ./squid/myCA.pem /usr/local/squid/etc/myCA.pem
COPY ./squid/entrypoint.sh /entrypoint.sh
COPY ./squid/wait-for-it.sh /wait-for-it.sh

RUN chown nobody:nogroup /usr/local/squid/var/logs

ENV LD_LIBRARY_PATH=/usr/local/openssl/lib

RUN /usr/local/squid/sbin/squid -k parse

EXPOSE 8000

ENTRYPOINT ["/wait-for-it.sh", "--host=c-icap", "--port=1344", "--timeout=0", "--", "/bin/sh", "/entrypoint.sh"]

