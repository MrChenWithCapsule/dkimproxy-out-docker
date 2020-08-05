FROM alpine
RUN apk add --no-cache dkimproxy socat
COPY ./entry.sh /var/local/
ENTRYPOINT [ "sh" ]
CMD [ "/var/local/entry.sh" ]
EXPOSE 10027
