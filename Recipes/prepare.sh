#!/bin/bash

echo "Preparing the 'sql-parser' library for the installation" && \
  git submodule init && git submodule update && \
  echo "The 'sql-parser' library is prepared for the installation"