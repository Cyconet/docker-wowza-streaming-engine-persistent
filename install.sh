#!/bin/bash
set -e

# Inject persistent (config) data hack
sed -i '$ i\[ -r /usr/local/sbin/persistent_config.sh ] && \
 . /usr/local/sbin/persistent_config.sh' /sbin/entrypoint.sh && \
 rm $0
