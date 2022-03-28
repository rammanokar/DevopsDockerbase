FROM alpine:latest

RUN apk update 
RUN apk add sudo shadow net-tools busybox-extras busybox-extras py3-pip vim fish curl wget openssh
RUN pip install awscli 
RUN adduser -D admin -G wheel admin
RUN echo "admin:admin" | chpasswd
RUN  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER admin

ENTRYPOINT ["usr/bin/fish"]

