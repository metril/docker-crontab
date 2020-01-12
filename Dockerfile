FROM alpine:3.11

RUN mkdir -p /etc/periodic/1min &&\
    echo '*	*	*	*	run-parts /etc/periodic/1min' > /etc/crontab &&\
    apt-get update && apt-get install -y ipmitool
