#!/bin/bash -e

## add $VOL_VERSION check

docker run -i --volume dst_server${VOL_VERSION}:/root/.klei --mount type=bind,source=/root/backup,target=/root/backup -t debian:stable-20230612-slim /bin/bash
