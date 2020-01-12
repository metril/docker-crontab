FROM alpine:3.11

RUN mkdir -p /etc/periodic/1min &&\
    mkdir -p /ramdisk &&\
    echo '*	*	*	*	run-parts /etc/periodic/1min' > /etc/crontab &&\
    apk update && apk add ipmitool && apk add curl
