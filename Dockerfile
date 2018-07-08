FROM wowzamedia/wowza-streaming-engine-linux

# Dockerfile Maintainer                                                         
MAINTAINER Jan Wagner "waja@cyconet.org"

ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_URL
ARG VCS_REF
ARG VCS_BRANCH

# See http://label-schema.org/rc1/ and https://microbadger.com/labels
LABEL org.label-schema.name="Wowza - Wowza Live Streaming Server" \
    org.label-schema.description="Wowza Live Streaming Server (with persistence)" \
    org.label-schema.vendor="Cyconet" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.build-date="${BUILD_DATE:-unknown}" \
    org.label-schema.version="${BUILD_VERSION:-unknown}" \
    org.label-schema.vcs-url="${VCS_URL:-unknown}" \
    org.label-schema.vcs-ref="${VCS_REF:-unknown}" \
    org.label-schema.vcs-branch="${VCS_BRANCH:-unknown}"

ENV WSE_DATA_DIR=/var/lib/wowza
ENV WSE_LOG_DIR=/var/log/wowza

COPY install.sh persistent_config.sh /usr/local/sbin/
RUN bash /usr/local/sbin/install.sh
