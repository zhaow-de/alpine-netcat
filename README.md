# alpine-netcat

## Background

Since a long time we use Docker image `subfuzion/netcat` to run `nc` in a container environment and it worked well.
Due to the raising demand of arm64 platform (aarch64 architecture), we need the image to be multi-arch enabled,
which is not the case for `subfuzion/netcat`. Therefore we create this simple image as the substitution. 

## To build

1. `export NC_VERSION=1.130`
2. `docker buildx build --push --platform linux/amd64,linux/arm64 --builder rcplus --tag zhaowde/netcat:$NC_VERSION --tag zhaowde/netcat:latest .`
3. (for the command above, if the builder `rcplus` does not exist) `docker buildx create --bootstrap --name rcplus --driver docker-container --platform linux/amd64,linux/arm64 --use


