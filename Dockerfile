FROM debian:buster

COPY configure-dependencies.sh configure-php-modules.sh configure-rhymix.sh configure-php.sh configure-nginx.sh cleanup-dependencies.sh run.sh /var/tmp/

RUN /var/tmp/configure-dependencies.sh && \
    /var/tmp/configure-php-modules.sh && \
    /var/tmp/configure-rhymix.sh && \
    /var/tmp/configure-php.sh && \
    /var/tmp/configure-nginx.sh && \
    /var/tmp/cleanup-dependencies.sh

CMD ["/bin/bash", "-c", "/var/tmp/run.sh"]