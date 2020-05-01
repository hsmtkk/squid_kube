FROM hsmtkk/clamav:0.102.2

COPY --from=hsmtkk/c-icap:0.5.6 /usr/local/c-icap /usr/local/c-icap

COPY ./virusscan/c-icap.conf /usr/local/c-icap/etc/c-icap.conf
COPY ./virusscan/virus_scan.conf /usr/local/c-icap/etc/virus_scan.conf
COPY ./virusscan/clamd_mod.conf /usr/local/c-icap/etc/clamd_mod.conf

COPY ./virusscan/freshclam.conf /usr/local/clamav/etc/freshclam.conf
COPY ./virusscan/clamd.conf /usr/local/clamav/etc/clamd.conf

COPY ./virusscan/entrypoint.sh /entrypoint.sh

RUN mkdir /var/run/c-icap

RUN /usr/local/c-icap/bin/c-icap -VV

ENV LD_LIBRARY_PATH=/usr/local/openssl/lib
RUN /usr/local/clamav/sbin/clamd --version

EXPOSE 1344

ENTRYPOINT ["/entrypoint.sh"]

