#!/bin/bash
set -ex
pushd "$(dirname $0)"  # enables crontab to use this file
if [ -n "$(docker ps -q --filter name=tmod)" ] || [ -n "$FORCE" ] ; then
    docker-compose stop tmod
    docker-compose run --rm -e MSG="[Offline] Shutdown!" discord-notify
fi
