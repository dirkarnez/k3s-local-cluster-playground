https://github.com/vishnubob/wait-for-it.git

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent --server https://k3s.example.com --token mypassword" sh -s -
ufw allow 6443/tcp #apiserver
ufw allow from 10.42.0.0/16 to any #pods
ufw allow from 10.43.0.0/16 to any #services
