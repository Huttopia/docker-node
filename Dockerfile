FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# Install Node.js and NPM
RUN apt-get update -qq \
    && apt-get install -qqy \
        git \
        nodejs \
        npm

# Config Git
RUN git config --global http.sslVerify false

# Install Notify Osd for Gulp Notify
RUN apt-get update -qq \
    && apt-get install -qqy \
        notify-osd

WORKDIR /src

# Binarie install or start Node
ADD assets/bin/node /usr/bin/node
RUN chmod +x /usr/bin/node

ENTRYPOINT ["/usr/bin/node"]