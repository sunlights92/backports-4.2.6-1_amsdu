sudo rfkill unblock all
sudo ifconfig wlan0 192.168.1.11
sudo wpa_supplicant -Dnl80211 -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant.conf 
