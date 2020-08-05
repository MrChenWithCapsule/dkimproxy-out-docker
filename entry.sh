#!/bin/bash
set -e

if [[ -z "$RELAY_HOST" ]]; then
    RELAY_HOST="opensmtpd"
fi
if [[ -z "$RELAY_PORT" ]]; then
    RELAY_PORT="24"
fi

socat "tcp-listen:$RELAY_PORT" "tcp-connect:$RELAY_HOST"":$RELAY_PORT" &
exec dkimproxy.out --conf_file=/etc/dkimproxy/dkimproxy_out.conf
