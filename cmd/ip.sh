#!/bin/bash

# ===== ip =====
# Network tool for network device/address/route

# Options:
# -s, for statistic
# show dev <device>,
# ls <interface>,

# ===== Link device =====
### show device
ip l

### enable/disable device
ip l set <interface> up
ip l set <interface> down

### set tx queue
ip l set txqueuelen <number> dev <interface>

### set mtu
ip l set mtu <number> dev <interface>


# ===== Address =====
# -4, ipv4
# -6, ipv6

### show device address
ip a

### Add/Remove ip to <interface>
# brd,  as broadcast address
ip addr add [brd] <ip_address> dev <interface>
ip addr del <ip_address> dev <interface>

# ===== Route =====
# SELECTOR := [ root PREFIX ] [ match PREFIX ] [ exact PREFIX ] [ table TABLE_ID ] [ proto RTPROTO ] [ type TYPE ] [ scope SCOPE ]

ip r

### Add/Remove ip route via
ip r add <ip_address> dev <interface>
ip route add <ip_address> via <gatewayIP>
ip route add default <ip_address/network/mask> via <gatewayIP>
ip route del <ip_address>
ip route del default
ip route del <ip_address> dev <interface>

# ===== Neighbor =====

ip n

### Add/Remove neighbor entry
ip neigh add <ip_address> dev <interface]>
ip neigh del <ip_address> dev <interface]>