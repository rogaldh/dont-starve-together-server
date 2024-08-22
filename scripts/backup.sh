#!/bin/bash -e

CONFIG_NAME="${1}-conf.d.tgz"

cd /root/.klei/DoNotStarveTogether
tar -czf $CONFIG_NAME DediServer/
cp $CONFIG_NAME /root/backup/$CONFIG_NAME
exit
