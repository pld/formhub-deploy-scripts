# stop net manager and bring interfacer down
#sudo service network-manager start
#sudo service network-manager stop
sudo ip link set eth1 down
# switch card into ad-hoc mode
sudo iwconfig eth1 mode ad-hoc
# set channel
sudo iwconfig eth1 channel 4
# set ssid
sudo iwconfig eth1 essid the_one_formhub
# set WEP key
sudo iwconfig eth1 key 1234567890
sudo iwconfig eth1 commit
# bring interface back up
#sudo ip link set eth1 up
sudo ifconfig eth1 192.168.1.1 up
# start dhclient to get an address
#sudo dhclient eth1
# set an IP address
sudo ip addr add 192.168.1.1/16 dev eth1

