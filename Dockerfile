FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

# Install Node.js and NPM
RUN apt-get update \
    && apt-get install -qqy \
        git \
        nodejs \
        npm

# Fix Node.js On Ubuntu
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Config Git
RUN git config --global http.sslVerify false

# Install Bower
RUN npm install -g bower

# Install Gulp
RUN npm install -g gulp \
    && npm install --save-dev gulp-clean

# Install Eslint
RUN npm install -g eslint

WORKDIR /src

CMD ["bash"]
