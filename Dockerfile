FROM wowzamedia/wowza-streaming-engine-linux

# Dockerfile Maintainer                                                         
MAINTAINER Jan Wagner "waja@cyconet.org"

ENV WSE_DATA_DIR=/var/lib/wowza
ENV WSE_LOG_DIR=/var/log/wowza

COPY install.sh /tmp/install-loadbalancer.sh
COPY persistent_config.sh /usr/local/sbin/persistent_config.sh
RUN bash /tmp/install-loadbalancer.sh
