#!/usr/bin/env bash

REPOSITORY="https://github.com/rendler-denis/docker-project-skeleton"
ARTIFACTS_URL="https://api.github.com/repos/rendler-denis/docker-project-skeleton/tarball"
TMPFILE="docker.tar.gz"

function download() {
  LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' $REPOSITORY/releases/latest)
  LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
  TARBALL_URL="$ARTIFACTS_URL/$LATEST_VERSION"

  echo -e "Downloading tag: $LATEST_VERSION \n"
  curl -L $TARBALL_URL -o $TMPFILE
}

function unpack() {
  echo -e "Unpacking to local folder... \n"
  tar -xf $TMPFILE --strip 1
}

function prepDotEnv() {
  echo -e "Preparing env file... \n"
  cp .docker.env.dist .docker.env
}

function cleanup() {
  echo -e "Cleaning up... \n"
  rm -rf $TMPFILE
}

download
unpack
prepDotEnv
cleanup
