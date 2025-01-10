#!/bin/bash

# Build the project
docker container run --rm \
  -p 8080:80 \
  -v $PWD:/usr/share/nginx/html/docs \
  -e SPEC_URL=./docs/openapi/api.yaml \
  redocly/redoc
