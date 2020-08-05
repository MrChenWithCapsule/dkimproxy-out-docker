#!/bin/bash
set -e

set_env() {
    local name="$1"
    local default="$2"
    if [[ -z "${$name}" ]]
    then
        export "$name"="$default"
    fi
}

set_env "RELAY_HOST" "opensmtpd"
set_env "RELAY_PORT" "24"

socat "tcp-listen:$RELAY_PORT" "tcp-connect:$RELAY_HOST"":$RELAY_PORT" &
exec dkimproxy.out --conf_file=/etc/dkimproxy/dkimproxy_out.conf
