FROM hsmtkk/squid_kube_centos-dev:8 as builder

WORKDIR /usr/local/src

RUN curl -L -O https://www.openssl.org/source/openssl-1.1.1g.tar.gz \
 && tar fxz openssl-1.1.1g.tar.gz \
 && cd openssl-1.1.1g \
 && ./config --prefix=/usr/local enable-md2 shared \
 && make \
 && make test \
 && make install_sw

RUN rm -rf /usr/local/src/*

FROM hsmtkk/squid_kube_centos:8

COPY --from=builder /usr/local /usr/local

#RUN echo /usr/local/lib64 > /etc/ld.so.conf.d/usr_local_lib64.conf \
# && ldconfig

RUN openssl version

