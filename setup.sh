#!/bin/sh

set -ex

if [ -z "$CODESPACES" ]; then
  source setup.codespaces.sh
else
  source setup.osx.sh
fi
