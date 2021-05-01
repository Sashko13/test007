#!/bin/bash 

ARP="$(arp | grep eth0 | awk '{print $3, $5}')"

if [[ -n $ARP  ]]
then
echo "$(date) $ARP" >> /var/log/arp_checker.log
else 
echo "$(date) eth0 interface: the mac address cache is empty" >> /var/log/arp_checker.log
exit 1
fi
exit 0