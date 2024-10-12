#!/bin/bash

# Get public IPv4 and IPv6 addresses
ipv4=$(curl -s https://ipv4.icanhazip.com)
ipv6=$(curl -s https://ipv6.icanhazip.com)

# Output IP addresses
echo " IPv4: $ipv4 | IPv6: $ipv6 "
