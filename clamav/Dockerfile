FROM hsmtkk/clamav:0.102.2

COPY ./clamav/freshclam.conf /usr/local/clamav/etc/freshclam.conf
COPY ./clamav/clamd.conf /usr/local/clamav/etc/clamd.conf
COPY ./clamav/entrypoint.sh /entrypoint.sh

ENV LD_LIBRARY_PATH=/usr/local/openssl/lib

RUN /usr/local/clamav/sbin/clamd --version

EXPOSE 3310

ENTRYPOINT ["/entrypoint.sh"]

