# docker-rimgo

## source

[Source repository.](https://codeberg.org/video-prize-ranch/rimgo)

## example

```
  rimgo:
    image: ghcr.io/xnaas/rimgo:latest
    container_name: rimgo
    restart: unless-stopped
    ports:
      - "54321:3000"
    environment:
      - RIMGU_IMGUR_CLIENT_ID=546c25a59c58ad7
```
