FROM eniocarboni/docker-ubuntu-systemd:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y --no-install-recommends --allow-unauthenticated install \
    wget \
    ufw

#apiserver
RUN ufw allow 6443/tcp

#pods
RUN ufw allow from 10.42.0.0/16 to any

#services
RUN ufw allow from 10.43.0.0/16 to any

WORKDIR "/home"

RUN wget -O install.sh https://get.k3s.io && \
    ls && \
    chmod +x /home/install.sh && \
    /home/install.sh --node-name master --flannel-backend none --token 12345

CMD [ "/bin/bash" ]