#!/bin/bash

# echo command.
set -o verbose

# Build the source conatiner first.
./containers/drupal7_source/build.sh "$@"

fig build "$@"
