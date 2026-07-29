# Configuration du VPS.
Debian 13

# Configuration des redirections du nom de domaine.
matrix.example.com  (A)     ---> IPv4
matrix.example.com  (AAAA)  ---> IPv6
element.example.com (CNAME) ---> matrix.example.com

# Des redirections ou ouvertures de ports si pare-feu externe.
22/tcp          (SSH)
80/tcp          (HTTP)
443/tcp         (HTTPS)
443/udp         (HTTPS)
8448/tcp        (Matrix Federation API)
8448/udp        (Matrix Federation API)
7881/tcp        (ICE/TCP)
7882/udp        (ICE/UDP Mux)
3479/udp        (TURN/UDP)
5350/tcp        (TURN/TCP)
30000:30020/udp (TURN relay range)