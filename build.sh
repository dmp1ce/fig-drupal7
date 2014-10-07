#!/bin/bash

# Build the source conatiner first.
./containers/drupal7_source/build.sh

fig build
