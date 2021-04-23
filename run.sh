# https yazmadigin surece tum http siteleri yonlendiriyor
#google u da yonlendiriyor
service apache2 start
ifconfig wlan1 192.168.1.1 netmask 255.255.255.0
dnsmasq -C dnsmasq.conf
hostapd hostapd.conf -B
echo "cıkıs (ENT) : "
read 
service hostapd stop
service dnsmasq stop
service apache2 stop
ifconfig wlan1 down
killall dnsmasq hostapd
echo "exiting is succesfull"

