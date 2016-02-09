FROM mhart/alpine-node:latest

# Dockerfile Maintainer
MAINTAINER Jan Wagner "waja@cyconet.org"

# Install dependencies
RUN apk --no-cache add --virtual build-dependencies git ca-certificates && \
  # Pull jingo source
  git clone https://github.com/claudioc/jingo.git /opt/jingo && cd /opt/jingo && \
  # Checkout latest tag
  LATEST_TAG=$(git tag -l 'v*.[0-9]' --sort='v:refname'| tail -1); git checkout $LATEST_TAG -b $LATEST_TAG && \
  # Set global git config
  git config --global user.name "Jingo Wiki" && git config --global user.email "everyone@jingo" && \
  # Install npm depenencies
  npm install && \
  # Adjust configuration path in package.json script
  sed -ri 's#"./jingo -c config.yaml"#"./jingo -c config/config.yaml"#' /opt/jingo/package.json && \
  # Create configuration dir
  mkdir -p /opt/jingo/config

WORKDIR /opt/jingo
ADD start.sh /opt/jingo/start.sh
CMD /bin/sh /opt/jingo/start.sh
