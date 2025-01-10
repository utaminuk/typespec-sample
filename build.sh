#!/bin/bash

npm run tsp -- compile .
# Build the project
docker run --rm \
  -v $PWD:/spec \
  redocly/cli \
  build-docs \
  ./tsp-output/@typespec/openapi3/openapi.yaml \
  -o ./openapi.html
