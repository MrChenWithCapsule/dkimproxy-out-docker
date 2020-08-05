# Usage

Edit `/etc/dkimproxy/dkimproxy_out.conf` and mount it into the container.

Change environment variable `RELAY_HOST` and `RELAY_PORT` to control which host is relayed to; socat will map `$RELAY_HOST:$RELAY_PORT` to `localhost:$RELAY_PORT` so that dkimproxy can connect to that host without explicitly specifying ip address.
