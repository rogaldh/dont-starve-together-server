#!/bin/sh +x

docker run -di \
  --volume dst_server${VOL_VERSION:-${VERSION}}:/home/steam/.klei \
  -p 11001:11001 \
  -p 27019:27019 \
  -p 8769:8769 \
  -p 11000:11000 \
  -p 27018:27018 \
  -p 8768:8768 \
  -p 10889:10889 \
  -p 12345:12345 \
  -p 12346:12346 \
  -t dst-server:${VERSION}
