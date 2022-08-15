#!/bin/bash

VERSION_SCRIPT="Version/version.sh"

if ! test -e "$VERSION_SCRIPT"; then

  echo "ERROR: The version script was not found at path: '$VERSION_SCRIPT'"
  exit 1
fi

# shellcheck disable=SC1090
. "$VERSION_SCRIPT" && \
  echo "Installing the '$VERSIONABLE_NAME' target, please wait" && \
  cd "Library" && \
  git reset --hard HEAD && \
  make -j "$(nproc)" && \
  sudo make install && \
  echo "The '$VERSIONABLE_NAME' target has been installed with success" && \
  git reset --hard HEAD

# Install log example:
#
# cp libsqlparser.so /usr/local/lib/libsqlparser.so
# rm -rf /usr/local/include/hsql
# cp -r src /usr/local/include/hsql
# find /usr/local/include/hsql -not -name '*.h' -type f | xargs rm
