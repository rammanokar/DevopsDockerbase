FROM alpine:latest
CMD apk update
CMD apk add sudo shadow net-tools telnet busybox-extras kubectl helm py3-pip vim fish
CMD adduser -D admin -G wheel admin
CMD echo "admin:admin" | chpasswd
USER ram
ENTRYPOINT ["usr/bin/fish"]

