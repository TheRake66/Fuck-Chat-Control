# Installer les paquets.
sudo apt install git python3 curl ansible just -y

# Cloner le playbook.
git clone https://github.com/spantaleev/matrix-docker-ansible-deploy.git
cd matrix-docker-ansible-deploy

# Initialisation automatisée du playbook.
just add-inventory-host example.com 255.255.255.255

# Modifier la configuration d'Ansible.
nano inventory/hosts
ansible_connection=local

# Modifier la configuration de Matrix.
nano inventory/host_vars/matrix.example.com/vars.yml
matrix_static_files_container_labels_base_domain_enabled: true
matrix_element_call_enabled: true
matrix_synapse_allow_guest_access: true
matrix_rtc_enabled: true
max_upload_size: 50
cinny_enabled: true

# Mettre à jour les rôles d'Ansible.
just update

# Lancer l'installation (2x si Traefik pose problème).
just install-all

# Créer un compte administrateur.
just register-user admin qwerty1234 yes