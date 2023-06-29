#!/bin/sh -e

if [ -z $VOL_VERSION ]; then echo "Absent VOL_VERSION"; exit 1; fi
if [ -z $VERSION ]; then echo "Absent VERSION"; exit 1; fi
