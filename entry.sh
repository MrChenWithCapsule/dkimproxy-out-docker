#!/bin/bash
set -e

socat "tcp-listen:$RELAY_PORT" "tcp-connect:$RELAY_HOST"":$RELAY_PORT" &
exec dkimproxy.out --conf_file=/etc/dkimproxy/dkimproxy_out.conf
