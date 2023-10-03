#!/bin/bash

if [ -z "$KDDNS_CREDENTIALS_FILE" ]; then
  echo "Error: KDDNS_CREDENTIALS_FILE environment variable is not set."
  exit 1
fi

if [ -f "$KDDNS_CREDENTIALS_FILE" ]; then
  while IFS= read -r CREDENTIALS; do
    IFS=':' read -r USERNAME PASSWORD SUBDOMAIN DOMAIN <<< "$CREDENTIALS"
    
    URL="https://$USERNAME:$PASSWORD@infomaniak.com/nic/update?hostname=$SUBDOMAIN.$DOMAIN"
    
    curl -u "$USERNAME:$PASSWORD" "$URL"
  done < "$KDDNS_CREDENTIALS_FILE"
else
  echo "Error: KDDNS credentials secret file not found."
  exit 1
fi
