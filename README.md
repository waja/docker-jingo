<!-- markdownlint-disable MD045 -->
# Docker-Jingo

[![](https://images.microbadger.com/badges/version/waja/jingo.svg)](https://hub.docker.com/r/waja/jingo/)
[![](https://images.microbadger.com/badges/image/waja/jingo.svg)](https://hub.docker.com/r/waja/jingo/)
[![Build Status](https://travis-ci.org/Cyconet/docker-jingo.svg?branch=development)](https://travis-ci.org/Cyconet/docker-jingo)
[![Docker Build Status](https://img.shields.io/docker/build/waja/jingo.svg)](https://hub.docker.com/r/waja/jingo/)
[![GitHub tag](https://img.shields.io/github/tag/Cyconet/docker-jingo.svg)](https://github.com/Cyconet/docker-jingo/tags)
[![](https://img.shields.io/docker/pulls/waja/jingo.svg)](https://hub.docker.com/r/waja/jingo/)
[![](https://img.shields.io/docker/stars/waja/jingo.svg)](https://hub.docker.com/r/waja/jingo/)
[![](https://img.shields.io/docker/automated/waja/jingo.svg)](https://hub.docker.com/r/waja/jingo/)

Starts [Jingo](https://github.com/claudioc/jingo) wiki server (See [http://jingo.cica.li:6067/wiki/home](http://jingo.cica.li:6067/wiki/home) for live demo). Mount a Git repository at ```/opt/wiki-content``` or let the startup script create the repo for you.

```bash
JINGO_EXPORT_PATH="/srv/docker/jingo"; docker run --rm -v ${JINGO_EXPORT_PATH}/config/:/opt/jingo/config/ -v ${JINGO_EXPORT_PATH}/data/:/opt/wiki-content -e 'JINGO_APPLICATION_TITLE=My Amazing Wiki' -p 8080:8080 waja/jingo
```

## Environment variables

* __JINGO_APPLICATION_TITLE__: wiki name to display in the top-left (default: "Jingo Wiki")
* __JINGO_REPOSITORY__: path to wiki content within container (default: /opt/wiki-content)
* __JINGO_HOSTNAME__: hostname that Jingo expects to be running at (default: localhost)
* __JINGO_PORT__: port that Jingo will run on (default: 8080)

This image is based on [mhart/alpine-node](https://github.com/mhart/alpine-node), a minimal Node.js image based on [Alpine Linux](https://alpinelinux.org/).
