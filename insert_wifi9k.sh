echo insmod compat/compat.ko
insmod compat/compat.ko
echo insmod net/wireless/cfg80211.ko
insmod net/wireless/cfg80211.ko
echo insmod net/mac80211/mac80211.ko
insmod net/mac80211/mac80211.ko
echo insmod ath.ko
insmod drivers/net/wireless/ath/ath.ko
echo insmod ath9k_hw.ko
insmod drivers/net/wireless/ath/ath9k/ath9k_hw.ko
echo insmod ath9k_common.ko
insmod drivers/net/wireless/ath/ath9k/ath9k_common.ko
echo insmod ath9k_htc.ko
insmod drivers/net/wireless/ath/ath9k/ath9k_htc.ko
echo insmod ath9k.ko
insmod drivers/net/wireless/ath/ath9k/ath9k.ko
#echo insmod module1.ko
#insmod net/wireless/module1.ko

#sleep 1
#echo ifconfig wlan0 192.168.1.1
#ifconfig wlan0 192.168.1.1
ifconfig wlan0 192.168.1.11
#echo dmesg -c > dmesg.log
#dmesg -c > dmesg.log



