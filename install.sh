#!/bin/bash
set -e

# Install Loadbalancer Addon

WOWZA_LOADBALANCER_PLUGIN_URL="https://www.wowza.com/downloads/forums/loadbalancer/LoadBalancer_4.0.zip"
WOWZA_BASE_PATH="/usr/local/WowzaStreamingEngine"

# install required system packages
apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y wget unzip && \
 rm -rf /var/lib/apt/lists/* && \
 # download wowza plugin 
 wget "${WOWZA_LOADBALANCER_PLUGIN_URL}" -O /tmp/LoadBalancer.zip && \
 # install LoadBalancer Plugin
 unzip /tmp/LoadBalancer.zip -d "/tmp/LoadBalancer/" && \
 mv /tmp/LoadBalancer/lib/*.jar "${WOWZA_BASE_PATH}/lib/" && \
 # remove LoadBalancer Plugin upstream
 rm -rf /tmp/LoadBalancer* && \
# Inject persistent (config) data hack
 sed -i '$ i\[ -r /usr/local/sbin/persistent_config.sh ] && . /usr/local/sbin/persistent_config.sh' /sbin/entrypoint.sh
