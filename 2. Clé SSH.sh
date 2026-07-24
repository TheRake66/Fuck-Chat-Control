# Génère une paire de clés.
ssh-keygen -t ed25519 -C "you@example.com"

# Copie la clé publique.
ssh-copy-id debian@matrix.example.com

# Connection au VPS.
ssh debian@matrix.example.com

# Suprimer la configuration SSH d'OVH.
sudo rm /etc/ssh/sshd_config.d/50-cloud-init.conf

# Créer la configuration SSH.
sudo nano /etc/ssh/sshd_config

# Désactive la connexion ROOT et le mot de passe.
PermitRootLogin no
PasswordAuthentication no
PubkeyAuthentication yes

# Relancer le service SSH.
sudo systemctl restart ssh