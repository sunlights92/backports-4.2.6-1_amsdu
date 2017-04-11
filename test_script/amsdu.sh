ls /proc/mac80211/amsdu >> /dev/null
if [ $? -ne 0 ]
then 
    echo "Not found: /proc/mac80211/amsdu"
    exit
fi

echo $1 >> /proc/mac80211/amsdu
test=`cat /proc/mac80211/amsdu`
if [ $test = "ON" ]
then 
    echo "AMSDU ON"
else
    echo "AMSDU OFF"
fi


