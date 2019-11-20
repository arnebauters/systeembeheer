#!/bin/bash

iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport 22345 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
iptables -A INPUT -p tcp -i eth0 -m multiport --dports 25,80,443,587,993,22345 -j ACCEPT 

iptables -A INPUT -p tcp --dport 53 -j ACCEPT 						
iptables -A INPUT -p udp --dport 53 -j ACCEPT	

iptables -A INPUT -p all -s 193.191.177.6 -j ACCEPT

iptables -A INPUT -p all -s 193.191.177.1 -j ACCEPT

iptables -A INPUT -p all -s 192.168.255.0/24 -j ACCEPT					

iptables -A INPUT -p all -s 10.0.0.0/8 -j ACCEPT					

iptables -A INPUT -p all -s 172.16.0.0/16 -j ACCEPT

iptables -A INPUT -p icmp --icmp-type 8 -s 0/0 -d 0.0.0.0 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

iptables -I INPUT 1 -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
