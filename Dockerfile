FROM wowzamedia/wowza-streaming-engine-linux

# Dockerfile Maintainer                                                         
MAINTAINER Jan Wagner "waja@cyconet.org"

COPY install.sh /tmp/install-loadbalancer.sh
RUN bash /tmp/install-loadbalancer.sh
