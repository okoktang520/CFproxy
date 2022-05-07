FROM alpine:latest

ADD govjob.sh /opt/govjob.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/govjob.sh

ENTRYPOINT ["sh", "-c", "/opt/govjob.sh"]
