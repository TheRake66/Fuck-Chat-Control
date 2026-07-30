# Pour activer Cinny (un clone de Discord).
cinny.example.com (CNAME) ---> matrix.example.com
cinny_enabled: true

# Pour activer Ketesa (une interface d'administration).
ketesa.example.com (CNAME) ---> matrix.example.com
matrix_ketesa_enabled: true
matrix_ketesa_hostname: ketesa.example.com
matrix_ketesa_path_prefix: /

# Pour activer Jitsi (une plateforme d'appel vidéo avec des invités). Ça évite de créer des
# comptes pour les personnes qui ne viennent qu'une fois en appel. Seul le modérateur peut
# créer un appel que les invités peuvent rejoindre.
jitsi.example.com (CNAME) ---> matrix.example.com
jitsi_enabled: true
jitsi_enable_auth: true
jitsi_enable_guests: true
jitsi_prosody_auth_internal_accounts:
  - username: "GuestModerator"
    password: ""
  - username: "GuestModerator2"
    password: ""

# Permet de désactiver la Fédération, mais les appels ne fonctionnent pas.
matrix_homeserver_federation_enabled: false
matrix_synapse_federation_port_enabled: false
matrix_synapse_reverse_proxy_companion_federation_api_enabled: false

# Ajouter ces lignes pour que le .well-known soit aussi servi sur le nom de domaine racine.
matrix_static_files_file_index_html_enabled: false
matrix_static_files_container_labels_base_domain_enabled: true
matrix_static_files_container_labels_base_domain_root_path_redirection_enabled: false

# Si le nom de domaine racine est sur une autre machine, déplacer les fichiers .well-known
# manuellement sur l'autre serveur. Forcer le reverse-proxy à renvoyer les fichiers du
# .well-known au format JSON et en autorisant le CORS via le .htaccess.
<FilesMatch "^(client|server|support)$">
    ForceType application/json
    Header set Access-Control-Allow-Origin "*"
</FilesMatch>