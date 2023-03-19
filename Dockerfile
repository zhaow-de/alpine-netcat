FROM alpine
RUN apk add --update --no-cache netcat-openbsd

ENTRYPOINT ["/usr/bin/nc"]
