#!/bin/bash

# In addition to building the drupal source container from strach (no cache)
# this script also refreshs the docker image.

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build --pull=true --no-cache=true -t drupal7_source $DIR/.
