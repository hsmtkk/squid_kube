FROM docker.pkg.github.com/hsmtkk/squid_kube/centos-dev:8 as builder

COPY --from=docker.pkg.github.com/hsmtkk/squid_kube/openssl:1.1.1g /usr/local /usr/local

WORKDIR /usr/local/src

RUN curl -L -O https://www.clamav.net/downloads/production/clamav-0.102.2.tar.gz \
 && tar fxz clamav-0.102.2.tar.gz \
 && cd clamav-0.102.2

#RUN ./configure --prefix=/usr/local \
# && make


