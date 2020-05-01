FROM hsmtkk/c-icap:0.5.6

COPY ./urlfilter/c-icap.conf /usr/local/c-icap/etc/c-icap.conf
COPY ./urlfilter/srv_url_check.conf /usr/local/c-icap/etc/srv_url_check.conf
COPY ./urlfilter/black_urls.txt /usr/local/c-icap/etc/black_urls.txt
COPY ./urlfilter/entrypoint.sh /entrypoint.sh

RUN mkdir /var/run/c-icap

RUN /usr/local/c-icap/bin/c-icap -VV

EXPOSE 1344

ENTRYPOINT ["/entrypoint.sh"]

