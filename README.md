# Patchwork Docker

A [docker](https://www.docker.com/) container for [patchwork](http://ssbc.github.io/patchwork/) pub server.

## Use

```
docker run \
  -e PATCHWORK_HOSTNAME=myhost.com \
  -v /home/patchwork/data:/root/.ssb \
  -p 8008:8008 \
  --name patchwork \
  -d asbjornenge/patchwork:1.0.0
```

To set up the profile, create invites etc. use `docker exec`.

```
docker exec -it patchwork bash
./node_modules/.bin/sbot whoami
```

enjoy.
