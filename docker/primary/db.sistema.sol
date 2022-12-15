;
; BIND data file for sistema.sol
;
$TTL	604800
@	IN	SOA	tierra.sistema.sol. informatica.sistema.sol. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	MX 10	marte.sistema.sol.
@	IN	NS	tierra
@	IN	NS	venus.sistema.sol.
@	IN	A	127.0.0.1
@	IN	AAAA	::1

tierra	IN	A	192.168.56.100
mercurio	IN	A	192.168.56.101
venus	IN	A	192.168.56.102
marte	IN	A	192.168.56.104

ns1	IN	CNAME	tierra
mail	IN	CNAME	marte