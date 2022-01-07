#!/bin/sh

set -e

DUCKDNS_RESPONSE=$(curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN%.duckdns.org}&token=${DUCKDNS_TOKEN}&txt=${CERTBOT_VALIDATION}&clear=true")

if [ "$DUCKDNS_RESPONSE" != "OK" ]; then
  return 1
fi
