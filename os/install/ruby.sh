#!/bin/bash

VERSION='latest'

rvm install ruby-${version}
ruby=$(rvm list | grep "${VERSION}" | awk '{ print $1 }')
rvm use --default ${ruby}