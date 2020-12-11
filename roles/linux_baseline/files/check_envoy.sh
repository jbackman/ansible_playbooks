#!/bin/bash
set -e
if [ -s /etc/envoy/config.yaml ]; then
/usr/bin/envoy -c /etc/envoy/config.yaml --mode validate;
else
echo "File /etc/envoy/config.yaml is empty!"
exit 1;
fi
