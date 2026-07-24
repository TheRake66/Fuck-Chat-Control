# Lancer l'installation (2x si Traefik pose problème).
just install-all

# Créer un utilisateur normal.
just register-user username password no

# Actualiser la configuration Matrix.
just setup-all

# Démarrer le serveur Matrix.
just start

# Arrêter le serveur Matrix.
just stop-all

# Vérifier que tous les services fonctionnent.
ansible-playbook -i inventory/hosts setup.yml --tags=self-check