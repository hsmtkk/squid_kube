FROM hsmtkk/squid_kube_centos-dev:8 as builder

COPY --from=hsmtkk/squid_kube_openssl:1.1.1g /usr/local /usr/local

WORKDIR /usr/local/src

RUN curl -L -O https://www.clamav.net/downloads/production/clamav-0.102.2.tar.gz \
 && tar fxz clamav-0.102.2.tar.gz \
 && cd clamav-0.102.2 \
 && ./configure --prefix=/usr/local \
 && make \
 && make install

FROM hsmtkk/squid_kube_centos:8

COPY --from=builder /usr/local /usr/local

EXPOSE 1344


