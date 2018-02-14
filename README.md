# Docker-Wowza

[![](https://images.microbadger.com/badges/version/waja/wowza-streaming-engine-linux-loadbalancer.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-loadbalancer/)
[![](https://images.microbadger.com/badges/image/waja/wowza-streaming-engine-linux-loadbalancer.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-loadbalancer/)
[![Build Status](https://travis-ci.org/Cyconet/docker-wowza-streaming-engine-linux-loadbalancer.svg?branch=development)](https://travis-ci.org/Cyconet/docker-wowza-streaming-engine-linux-loadbalancer)
[![Docker Build Status](https://img.shields.io/docker/build/waja/wowza-streaming-engine-linux-loadbalancer.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-loadbalancer/)
[![GitHub tag](https://img.shields.io/github/tag/Cyconet/docker-wowza-streaming-engine-linux-loadbalancer.svg)](https://github.com/Cyconet/docker-wowza-streaming-engine-linux-loadbalancer/tags)
[![](https://img.shields.io/docker/pulls/waja/wowza-streaming-engine-linux-loadbalancer.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-loadbalancer/)
[![](https://img.shields.io/docker/stars/waja/wowza-streaming-engine-linux-loadbalancer.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-loadbalancer/)
[![](https://img.shields.io/docker/automated/waja/wowza-streaming-engine-linux-loadbalancer.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-loadbalancer/)

Extends the official [wowza docker image](https://hub.docker.com/r/wowzamedia/wowza-streaming-engine-linux/) with the [Dynamic Load Balancing AddOn](http://www.wowza.com/resources/WowzaDynamicLoadBalancingAddOn_UsersGuide.pdf) ready to run.

Running
-------

- run the docker container with:

Please have a look into the offical [documentaion](https://www.wowza.com/forums/content.php?867-How-to-set-up-Wowza-Streaming-Engine-using-Docker) by Wowza media systems.

Persistence of configuration
----------------------------

For Wowza to preserve its configuration state across container shutdown and startup you should mount a volume at ```/var/lib/wowza```.

Building
--------

```
make build
```

Get a shell in a running container
----------------------------------

```
make shell
```
