# Installer le pare-feu.
sudo apt install ufw -y

# Bloquer les entrées.
sudo ufw default deny incoming

# Autoriser les sorties.
sudo ufw default allow outgoing

# Autoriser l'accès SSH.
sudo ufw limit 22/tcp

# Activer le pare-feu.
sudo ufw enable