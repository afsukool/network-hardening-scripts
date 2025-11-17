#!/bin/bash

# Flush old rules
iptables -F

# Allow SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# Allow HTTP
iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Block everything else
iptables -A INPUT -j DROP

echo "Firewall rules applied successfully."
