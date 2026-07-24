# Ne pas désactiver la Fédération sinon les appels ne fonctionnent pas.
matrix_homeserver_federation_enabled: false
matrix_synapse_federation_port_enabled: false
matrix_synapse_reverse_proxy_companion_federation_api_enabled: false

# Ajouter cette ligne pour que le .well-known soit aussi servi sur le nom de domaine racine.
matrix_static_files_container_labels_base_domain_enabled: true

# Si le nom de domaine racine est sur une autre machine, déplacer les fichiers .well-known
# manuellement sur l'autre serveur. Forcer le reverse-proxy à renvoyer les fichiers du
# .well-known au format JSON et en autorisant le CORS via le .htaccess.
<FilesMatch "^(client|server|support)$">
    ForceType application/json
    Header set Access-Control-Allow-Origin "*"
</FilesMatch>