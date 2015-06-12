# Docker Node


### Install local packages

```bash
docker run --name=node \
    --rm \
    -it \
    ~/.ssh:/root/.ssh \
    /path/to/project:/src \
    node:latest \
    install
```
*Read `package.json` to `/src` and install packages to `/src/node_modules`*


### Use local node binaries

```bash
docker run --name=node \
    --rm \
    -it \
    ~/.ssh:/root/.ssh \
    /path/to/project:/src \
    node:latest \
    XXX
```
*Execute binarie XXX present to /src/node_modules/.bin/XXX*
