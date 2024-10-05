FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y --no-install-recommends --allow-unauthenticated install \
    wget \
    ufw \
    ca-certificates \
    curl

RUN update-alternatives --set iptables /usr/sbin/iptables-legacy
RUN update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy

#apiserver
# RUN ufw allow 6443/tcp

# #pods
# RUN ufw allow from 10.42.0.0/16 to any

# #services
# RUN ufw allow from 10.43.0.0/16 to any


RUN wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

# RUN cd /usr/local/bin/ && \
#     wget -O k3s https://github.com/k3s-io/k3s/releases/download/v1.26.5+k3s1/k3s && \
#     ls && \
#     chmod a+x ./k3s && \
#     K3S_KUBECONFIG_MODE="644" k3s server

    # INSTALL_K3S_EXEC="server" k3s server \
    # --etcd-disable-snapshots \
    # --flannel-backend none \
    # --disable-etcd \
    # --write-kubeconfig-mode=644 --cluster-init

    # /home/install.sh

# ENTRYPOINT [ "/sbin/init" ]

# ; 
    # --write-kubeconfig-mode "0644" \
    # 


