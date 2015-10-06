# docker-dev

Basic local development container which contains MySQL tools

## How to use

Run with the command:

```
docker run --rm -v /Users/<homedir>:/var/shared -h devbox -it dtest/docker-dev
```

## What it requires locally

This container will mount your homedirectory to /var/shared. It then adds the ~/.ssh/id_rsa to the ssh-agent if the file exists, which is helpful for pushing private git repositories.