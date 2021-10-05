#!/bin/bash
set -ex
pushd "$(dirname $0)"  # enables crontab to use this file
if [ -z "$(docker ps -q --filter name=tmod)" ] || [ -n "$FORCE" ] ; then
    docker-compose up -d tmod
    docker-compose run --rm -e MSG="[Online] Calamity Mod Server started, connect using TModLoader. Hours: 9PM-Mid Tue-Fri" discord-notify
fi
