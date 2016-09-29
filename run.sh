#! /bin/bash

docker run \
    --detach \
    --publish 8443:443 \
    --publish 8080:80 \
    --name gitlab \
    --restart unless-stopped \
    --volume $(pwd)/volumes/etc:/etc/gitlab \
    --volume $(pwd)/volumes/log:/var/log/gitlab \
    --volume $(pwd)/volumes/data:/var/opt/gitlab \
    beginor/gitlab-ce:8.8.5-ce.1
