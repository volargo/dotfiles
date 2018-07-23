#!/bin/bash 

# Show Ethernet stuff
E_inter=$(ip link | grep "^[1-9]: enp" | cut -d " " -f2 | tr -d :)
E_con=$(nmcli d | grep "$E_inter" | awk '{print $3}')
E_name=$(nmcli d | grep "$E_inter" | awk '{print $4}')
E_ip=$(ifconfig "$E_inter" | grep -w "inet" | cut -d ":" -f2 | awk '{print $1}')

# Use the provided interface, otherwise the device used for the default route.
if [[ -n $BLOCK_INSTANCE ]]; then
  IF=$BLOCK_INSTANCE
else
  IF=$(ip route | awk '/^default/ { print $5 ; exit }')
fi

#------------------------------------------------------------------------
# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
[[ ! -d /sys/class/net/${IF} ]] && exit

#------------------------------------------------------------------------
if [[ "$(cat /sys/class/net/$IF/operstate)" = 'down' ]]; then
  echo down # full text
  echo down # short text
  echo \#FF0000 # color
  exit
fi

case $1 in
  -4)
    AF=inet ;;
  -6)
    AF=inet6 ;;
  *)
    AF=inet6? ;;
esac

# if no interface is found, use the first device with a global scope
IPADDR=$(ip addr show $IF | perl -n -e "/$AF ([^\/]+).* scope global/ && print \$1 and exit")

#------------------------------------------------------------------------
INTERFACE="${BLOCK_INSTANCE:-wlan0}"

#------------------------------------------------------------------------
# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] ||
    [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]] && exit

#------------------------------------------------------------------------

QUALITY=$(grep $INTERFACE /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

Wifi () {
    echo -e "  $QUALITY%   $IPADDR"
}

Ethernet () {
if [ "$E_con" = "connected" ];then 
    echo -e " $E_ip ($E_name)"
else
    echo -e " : "
fi 
}

case "$1" in 
    "-w" )
        Wifi
    ;;
    "-e" )
        Ethernet
    ;;
    * )
		echo -e " $0 : no Argument \n\t -e : Show Ethernet \n\t -w : Show Wireless"
    ;;
esac 
