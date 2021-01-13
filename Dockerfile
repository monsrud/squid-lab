FROM alpine:3.12

RUN apk add --no-cache squid 

ADD squid.conf /etc/squid/squid.conf
ADD entrypoint.sh /entrypoint.sh

EXPOSE 3128

ENTRYPOINT ["/entrypoint.sh"]
