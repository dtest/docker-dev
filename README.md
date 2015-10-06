# docker-dev

Basic local development container which contains MySQL tools

## How to use

Run with the command:

```
docker run --rm -v /Users/<homedir>:/var/shared -h devbox -it dtest/docker-dev
```

## What it requires locally

This container will mount your homedirectory to /var/shared. It then attempts to add an ~/.ssh/id_rsa to the ssh-agent, which is helpful for pushing private git repositories.