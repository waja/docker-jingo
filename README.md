Starts [Jingo](https://github.com/MakingAwesome/jingo) wiki server (See http://jingo.cica.li:6067/wiki/home for live demo). Mount a Git repository at ```/opt/wiki-content``` or let the startup script create the repo for you.

```
JONGO_EXPORT_PATH="/srv/docker/jingo"; docker run --rm -v $(JONGO_EXPORT_PATH)/config/:/opt/jingo/config/ -v $(JONGO_EXPORT_PATH)/data/:/opt/wiki-content -e 'JINGO_APPLICATION_TITLE=My Amazing Wiki' -p 8080:8080 waja/jingo
```

## Environment variables

* __JINGO_APPLICATION_TITLE__: wiki name to display in the top-left (default: "Jingo Wiki")
* __JINGO_REPOSITORY__: path to wiki content within container (default: /opt/wiki-content)
* __JINGO_HOSTNAME__: hostname that Jingo expects to be running at (default: localhost)
* __JINGO_PORT__: port that Jingo will run on (default: 8080)

This image is based on [mhart/alpine-node](https://github.com/mhart/alpine-node), a minimal Node.js image based on [Alpine Linux](https://alpinelinux.org/). 
