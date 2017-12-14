#!/usr/bin/env bash
/sbin/iptables -F
/sbin/iptables -A INPUT -i lo -j ACCEPT
/sbin/iptables -A INPUT -p icmp -j ACCEPT
/sbin/iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A INPUT -i ens33 -p tcp --dport 22 -j ACCEPT
/sbin/iptables -A INPUT -i ens33 -p tcp --dport 1080 -j ACCEPT
/sbin/iptables -A INPUT -i ens33 -p tcp --dport 6080 -j ACCEPT
/sbin/iptables -A INPUT -i ens33 -p tcp --dport 10050 -j ACCEPT
/sbin/iptables -A INPUT -i ens33 -p tcp --dport 65530 -j ACCEPT
/sbin/iptables -A INPUT -i ens35 -p tcp -s 192.168.142.0/24 -j ACCEPT

/sbin/iptables -P INPUT DROP
/sbin/iptables -P FORWARD DROP
