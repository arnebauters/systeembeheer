; BIND reverse data file for empty rfc1918 zone
;
; DO NOT EDIT THIS FILE - it is used for multiple zones.
; Instead, copy it, edit named.conf, and use that copy.
;
$TTL	86400
@	IN	SOA	ns.arne-bauters.sb.uclllabs.be. arne.bauters.sb.uclllabs.be. (

			2019102603		; Serial
			 300		; Refresh
			  300		; Retry
			300		; Expire
			  300 )	; Negative Cache TTL

	IN	NS	ns.arne-bauters.sb.uclllabs.be.
	IN	NS	ns1.uclllabs.be.
	IN	NS	ns2.uclllabs.be.
	IN	NS	ns.sam-arnalsteen.sb.uclllabs.be.

;A records

ns1	IN	A	193.191.176.254
ns2	IN	A	193.191.177.4

www	IN	A	193.191.177.130
ns	IN	A	193.191.177.130
test	IN	A	193.191.177.254
ns.sam-arnalsteen	IN	A	193.191.177.176
www1	IN	A	193.191.177.130
www2	IN	A	193.191.177.130
secure	IN	A	193.191.177.130
supersecure	IN	A	193.191.177.130

mx	IN	A	193.191.177.130

@	IN	A	193.191.177.130

@	IN	MX	10	mx

@	IN	AAAA	2001:6a8:2880:a077::82	
ns	IN	AAAA	2001:6a8:2880:a077::82
mx	IN	AAAA	2001:6a8:2880:a077::82

arne-bauters.sb.uclllabs.be.	IN	CAA	0 issue	"letsencrypt.org"
arne-bauters.sb.uclllabs.be.	IN	CAA	0 iodef "mailto:root@arne-bauters.sb.uclllabs.be"
$INCLUDE Karne-bauters.sb.uclllabs.be.+007+07529.key
$INCLUDE Karne-bauters.sb.uclllabs.be.+007+14115.key

arne-bauters.sb.uclllabs.be. IN DS 14115 7 1 7DF425F78D6C3E8E36AD93C9F47C0A674B0BA290
arne-bauters.sb.uclllabs.be. IN DS 14115 7 2 3448441B5906D398A9220BE5364796C0E2BBE815D885BD84DF1C0DEA 8ABEB270
