#!/bin/bash

### Enable/Disable iptable
sudo systemctl enable ipatbles
sudo systemctl start ipatbles
sudo systemctl stop ipatbles
sudo systemctl restart ipatbles
sudo systemctl status ipatbles

iptable <Command Options> <INPUT/FORWARD/OUTPUT> [<Options>]

### Command Options
# -A, Adds a new rule to the chain at the end of the chain.
# -C, Checks for rule whether it satisfies the chain’s requirement.
# -D, Allows users to delete an existing rule from the chain.
# -F, This will remove each rule defined by the user.
# -I, Allows users to add a new rule at the specified position.
# -N, Creates an entirely new chain.
# -v, When used with the list option, brings detailed information.
# -X, Deletes chain.
# -L, List current rules

# -n, numeric output
# -v, verbose
# -t <table>, select one table to do

### Options
# -p, Protocols ex: tcp, udp
# --tcp-flags,
# -s, Source IP/mask
# -sport, Source port
# -d, Destination IP/mask
# -dport, Destination port
# -i, IN interface
# -o, OUT interface
# -j <[ACEEPT|DROP|REJECT|RETURN]>,
# -j LOG --log-prefix "IPtables dropped packets:", keep log on DROP
# -m connlimit --connlimit-above <number>, limit concurrent connection
# -m multiport --dports <port|,>,
# -m conntrack --ctstate ESTABLISHED,RELATED,
# -m conntrack --ctstate INVALID, drop INVALID package

# backup
IPTABLES_BACKUP_PATH="~/.iptables.rules"
iptables-save > ${IPTABLES_BACKUP_PATH}