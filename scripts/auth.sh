#!/bin/sh

set -e

DUCKDNS_RESPONSE=$(curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN%.duckdns.org}&token=${DUCKDNS_TOKEN}&txt=${CERTBOT_VALIDATION}")
echo "Sleeping for 60 seconds"

if [ "$DUCKDNS_RESPONSE" != "OK" ]; then
  return 1
fi
