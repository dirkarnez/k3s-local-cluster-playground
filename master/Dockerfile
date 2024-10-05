FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y --no-install-recommends --allow-unauthenticated install \
    curl \
    ufw

#apiserver
RUN ufw allow 6443/tcp

#pods
RUN ufw allow from 10.42.0.0/16 to any

#services
RUN ufw allow from 10.43.0.0/16 to any


CMD curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--node-name master --flannel-backend none --token 12345" sh -s - 