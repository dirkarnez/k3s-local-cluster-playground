k3s-local-cluster-playground
============================
Using [k3d](https://k3d.io/) instead of [K3s](https://k3s.io/)

### Notes
- k3s is not docker friendly
    - the official installation script uses systemd, setting systemd is troublesome in docker environment
    - the official alternative installation script requires some docker-networking tweaks