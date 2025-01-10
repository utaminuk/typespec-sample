#!/bin/bash

npm run tsp -- compile ./spec

# Build the project
docker run --rm \
  -v $PWD:/spec \
  redocly/cli \
  build-docs \
  ./openapi/api.yaml \
  -o ./api.html
