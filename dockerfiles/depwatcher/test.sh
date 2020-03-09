#!/bin/bash

# shellcheck disable=SC2046
docker run -it -v $(pwd):/app -w /app crystallang/crystal:0.32.1 crystal spec --no-debug
