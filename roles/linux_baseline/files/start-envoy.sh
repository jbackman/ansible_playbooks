#!/bin/bash
set -e
/usr/bin/envoy -c /etc/envoy/config.yaml --mode validate --base-id 6969;
if [ ! $? ]; then
exit 1;
fi
exec /usr/bin/envoy -c /etc/envoy/config.yaml --restart-epoch $RESTART_EPOCH
