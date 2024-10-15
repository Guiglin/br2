#!/bin/bash

SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILDROOT_DIR=${SCRIPTDIR%/}
BUILDROOT_DIR=${BUILDROOT_DIR%/*/*}

PATH="${BUILDROOT_DIR}/output/host/usr/bin/":$PATH

flash.sh $SCRIPTDIR
