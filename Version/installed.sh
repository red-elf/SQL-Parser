#!/bin/bash

HERE="$(pwd)"
VERSION_SCRIPT="$HERE/Versionable/current.sh"

if ! test -e "$VERSION_SCRIPT"; then

  echo "ERROR: The version script was not found at path: '$VERSION_SCRIPT'"
  exit 1
fi

if test -e /usr/local/include/hsql/SQLParser.h; then

  sh "$VERSION_SCRIPT"
fi
