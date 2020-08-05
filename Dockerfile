FROM alpine
RUN apk add --no-cache dkimproxy
USER dkimproxy:dkimproxy
ENTRYPOINT [ "dkimproxy.out" ]
CMD [ "--conf_file=/etc/dkimproxy/dkimproxy_out.conf" ]
EXPOSE 10027
