#!/usr/bin/env sh
set -ex

env

echo '{
    "username": "' ${DISCORD_USER} '",
    "content": "' ${MSG} '"
}' | curl \
    -H "Content-Type: application/json" \
    -d@- \
    "${WEBHOOK_URL}"
