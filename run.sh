# https yazmadigin surece tum http siteleri yonlendiriyor
#google u da yonlendiriyor
ifconfig wlan0 down
iptables --flush
echo 1 > /proc/sys/net/ipv4/ip_forward
hostapd hostapd.conf -B
ifconfig wlan0 192.168.1.1 netmask 255.255.255.0
service apache2 start
dnsmasq -C dnsmasq.conf
echo "cıkıs (ENT) : "
read 
service hostapd stop
service dnsmasq stop
service apache2 stop
ifconfig wlan1 down
killall dnsmasq hostapd
echo "exiting is succesfull"

