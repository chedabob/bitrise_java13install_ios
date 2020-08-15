#!/bin/bash

echo "Adding Brew OpenJDK install to jEnv"
VERSION = $(jenv add /usr/local/opt/openjdk/ | tail -n 1)

echo "Setting JVM version in jEnv"
jenv global $VERSION