FROM hsmtkk/clamav:0.102.2

COPY --from=hsmtkk/c-icap:0.5.6 /usr/local/c-icap /usr/local/c-icap

COPY ./virus_scan/c-icap.conf /usr/local/c-icap/etc/c-icap.conf
COPY ./virus_scan/virus_scan.conf /usr/local/c-icap/etc/virus_scan.conf
COPY ./virus_scan/clamd_mod.conf /usr/local/c-icap/etc/clamd_mod.conf

COPY ./virus_scan/freshclam.conf /usr/local/clamav/etc/freshclam.conf
COPY ./virus_scan/clamd.conf /usr/local/clamav/etc/clamd.conf

COPY ./virus_scan/entrypoint.sh /entrypoint.sh

RUN mkdir /var/run/c-icap

RUN /usr/local/c-icap/bin/c-icap -VV

ENV LD_LIBRARY_PATH=/usr/local/openssl/lib
RUN /usr/local/clamav/sbin/clamd --version

EXPOSE 1344

ENTRYPOINT ["/entrypoint.sh"]

