#!/bin/bash

echo "Adding Brew OpenJDK install to jEnv"
jenv add /usr/local/opt/openjdk/

echo "Setting JVM version in jEnv"
jenv global 13