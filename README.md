k3s-local-cluster-playground
============================
Using [k3d](https://k3d.io/) instead of [K3s](https://k3s.io/)

### Notes
- k3s is not docker friendly
    - the official installation script uses systemd, setting systemd is troublesome in docker environment
    - the official alternative installation script requires some docker-networking tweaks
 
### On LAN (Raspberry PIs on LAN, for example)
- Below commands is copied from terminal (may not work in newer versions of K3S, just to demonstrate the idea)
- server
    - ```sh
      sudo ufw disable
      sudo /usr/local/bin/k3s-killall.sh
      sudo /usr/local/bin/k3s-uninstall.sh
      sudo curl -sfL https://get.k3s.io | sh -
      ```
- agent
    - ```sh
      # token is copy from master machines' /var/lib/rancher/k3s/server/token
      # <prefix><cluster CA hash>::<credentials>
      sudo curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent --server https://<Contol Plane IP which should be a fix LAN IP assigned by the router>:6443 --node-name my-worker-node-1 --token xxxxxxx::xxxxxx:xxxxx" sh -
      sudo /usr/local/bin/k3s-agent-uninstall.sh
      ```
      
      
