#!/bin/bash
set -e

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIST_DIR="$ROOT_DIR/dist"

if [[ -n "$1" ]]; then
    DIST_DIR="$1"
fi

echo "DIST_DIR: $DIST_DIR"

echo "*** sysmodule ***"
pushd "$ROOT_DIR/sysmodule"
make clean
popd > /dev/null

echo "*** manager ***"
pushd "$ROOT_DIR/manager"
make clean
popd > /dev/null

echo "*** overlay ***"
pushd "$ROOT_DIR/overlay"
make clean
popd > /dev/null

rm -rf $DIST_DIR
