#!/bin/sh

set -ex

if [ -z "$CODESPACES" ]; then
  source setup.osx.sh
else
  source setup.codespaces.sh
fi
