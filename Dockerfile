FROM alpine:3.11

RUN apk update && apk add ipmitool && apk add curl
