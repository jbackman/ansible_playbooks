#!/bin/bash
set -e
export MAIN_PID=$1
/usr/bin/envoy -c /etc/envoy/config.yaml --mode validate --base-id 6969;
kill -1 $MAINPID;
