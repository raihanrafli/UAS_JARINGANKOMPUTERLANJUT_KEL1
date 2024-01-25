# jan/25/2024 20:15:00  by RouterOS 6.48.6
# software id = XF27-WJ41
#
# model = RB941-2nD
# serial number = A1C30BB18CA4
/interface wireless
set [ find default-name=wlan1 ] ssid=MikroTik
/interface vlan
add interface=ether4 name=vlan26 vlan-id=26
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.99.2-192.168.99.254
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=ether4 name=dhcp1
/ip address
add address=192.168.99.1/24 interface=ether4 network=192.168.99.0
/ip dhcp-server network
add address=192.168.99.0/24 gateway=192.168.99.1
/system clock
set time-zone-name=Asia/Jakarta
