#!/bin/bash

echo "Adding Brew OpenJDK install to jEnv"
VERSION=$(jenv add /usr/local/opt/openjdk/ | tail -n 1 | sed $'s,\x1b\\[[0-9;]*[a-zA-Z],,g' | sed 's/[^0-9]*//g')

echo "Setting JVM version in jEnv"
jenv global $VERSION