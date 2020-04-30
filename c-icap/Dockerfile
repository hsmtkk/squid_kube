FROM hsmtkk/c-icap:0.5.6

COPY ./c-icap/c-icap.conf /usr/local/c-icap/etc/c-icap.conf
COPY ./c-icap/srv_url_check.conf /usr/local/c-icap/etc/srv_url_check.conf
COPY ./c-icap/black_urls.txt /usr/local/c-icap/etc/black_urls.txt
COPY ./c-icap/virus_scan.conf /usr/local/c-icap/etc/virus_scan.conf
COPY ./c-icap/clamd_mod.conf /usr/local/c-icap/etc/clamd_mod.conf
COPY ./c-icap/entrypoint.sh /entrypoint.sh
COPY ./c-icap/wait-for-it.sh /wait-for-it.sh

RUN mkdir /var/run/c-icap

RUN /usr/local/c-icap/bin/c-icap -VV

EXPOSE 1344

ENTRYPOINT ["/wait-for-it.sh", "--host=clamav", "--port=3310", "--timeout=0", "--", "/bin/sh", "/entrypoint.sh"]

