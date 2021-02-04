#!/bin/bash

echo "Adding Brew OpenJDK install to jEnv"
VERSION=$(jenv add /usr/local/opt/openjdk/ | tail -n 1 | sed $'s,\x1b\\[[0-9;]*[a-zA-Z],,g' | sed 's/[^0-9]*//g')

echo "Setting JVM version in jEnv"
jenv global $VERSION

# Force the Java version for tools that don't use the jEnv shims
export JAVA_HOME="$(jenv prefix)"
envman add --key JAVA_HOME --value "$(jenv prefix)"

echo "New Java version"
which java
java -version
