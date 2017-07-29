#!/bin/bash

docker run \
--rm \
--user `id -u`:`id -g` \
-v $HOME:$HOME \
-v $HOME:/data \
-e AWS_CONFIG_FILE=/data/.aws/config \
sstc/awscli \
aws $@
