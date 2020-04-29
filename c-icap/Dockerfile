FROM hsmtkk/c-icap:0.5.6

COPY ./c-icap.conf /usr/local/c-icap/etc/c-icap.conf
COPY ./srv_url_check.conf /usr/local/c-icap/etc/srv_url_check.conf
COPY ./black_urls.txt /usr/local/c-icap/etc/black_urls.txt
COPY ./virus_scan.conf /usr/local/c-icap/etc/virus_scan.conf
COPY ./clamd_mod.conf /usr/local/c-icap/etc/clamd_mod.conf
COPY ./entrypoint.sh /entrypoint.sh

RUN /usr/local/c-icap/bin/c-icap -VV

EXPOSE 1344

ENTRYPOINT ["/entrypoint.sh"]

