# Docker-Wowza

[![](https://images.microbadger.com/badges/version/waja/wowza-streaming-engine-linux-persistent.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-persistent/)
[![](https://images.microbadger.com/badges/image/waja/wowza-streaming-engine-linux-persistent.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-persistent/)
[![Build Status](https://travis-ci.org/Cyconet/docker-wowza-streaming-engine-linux-persistent.svg?branch=development)](https://travis-ci.org/Cyconet/docker-wowza-streaming-engine-linux-persistent)
[![Docker Build Status](https://img.shields.io/docker/build/waja/wowza-streaming-engine-linux-persistent.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-persistent/)
[![GitHub tag](https://img.shields.io/github/tag/Cyconet/docker-wowza-streaming-engine-linux-persistent.svg)](https://github.com/Cyconet/docker-wowza-streaming-engine-linux-persistent/tags)
[![](https://img.shields.io/docker/pulls/waja/wowza-streaming-engine-linux-persistent.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-persistent/)
[![](https://img.shields.io/docker/stars/waja/wowza-streaming-engine-linux-persistent.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-persistent/)
[![](https://img.shields.io/docker/automated/waja/wowza-streaming-engine-linux-persistent.svg)](https://hub.docker.com/r/waja/wowza-streaming-engine-linux-persistent/)

Extends the official [wowza docker image](https://hub.docker.com/r/wowzamedia/wowza-streaming-engine-linux/) with the ability to preserve configuration and logs.

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
