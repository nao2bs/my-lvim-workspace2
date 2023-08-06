#!/usr/bin/env bash
docker rm lvim 2&> /dev/null
docker run -it \
  --name lvim \
  --mount type=bind,source="$(pwd)/lvim",target=/root/.config/lvim \
  lvim
