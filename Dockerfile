FROM alpine:latest

RUN apk update && \
    apk add sudo shadow net-tools busybox-extras busybox-extras py3-pip vim fish curl wget openssh && \
    pip install awscli && \ 
    adduser -D admin -G wheel admin && \
    echo "admin:admin" | chpasswd && \
    echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER admin

ENTRYPOINT ["usr/bin/fish"]

