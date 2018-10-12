FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV APT "apt-get -yqq -o=Dpkg::Use-Pty=0"

RUN $APT update && \
  $APT install --no-install-recommends apt-utils && \
  $APT upgrade && \
  $APT install build-essential vim tmux htop iputils-ping

ADD config.sh /root/config.sh
ENTRYPOINT /bin/bash -c '. /root/config.sh && cd $WORKDIR && /bin/bash'
