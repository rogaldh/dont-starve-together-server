#!/bin/bash -e

CONFIG_NAME="${VOL_VERSION}-conf.d.tgz"

cd .klei/DoNotStarveTogether
tar -czf $CONFIG_NAME DediServer
cp $CONFIG_NAME /root/backup/$CONFIG_NAME
