# Installer le pare-feu.
sudo apt install ufw -y

# Bloquer les entrées.
sudo ufw default deny incoming

# Autoriser les sorties.
sudo ufw default allow outgoing

# Autoriser l'accès SSH.
sudo ufw allow 22/tcp

# Autoriser les serveurs web.
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Autoriser les flux d'appels.
sudo ufw allow 7881/tcp
sudo ufw allow 7882/udp
sudo ufw allow 3479/udp
sudo ufw allow 5350/tcp
sudo ufw allow 30000:30020/udp

# Activer le pare-feu.
sudo ufw enable