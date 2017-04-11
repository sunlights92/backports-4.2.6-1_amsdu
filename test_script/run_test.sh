packet_size=50

if [ $# -le 0 ]
then
    echo "Please give ip address"
    exit
fi

arguments=$*
set `date`
log_file=log/$1_$2_$3_$4_$5_$6.log
set $arguments

xterm -e ./wpa_supplicant.sh &
echo "wpa_supplicant started" >> $log_file
sleep 4

xterm -e tail -f $log_file &

while [ $packet_size -le 500 ]
do
    for traffic in udp tcp
    do
        for amsdu in OFF ON
        do
            date >> $log_file
            sh amsdu.sh $amsdu >> $log_file
            echo "packet_size = $packet_size" >> $log_file
        

            for i in $* 
            do
                #echo "sh iperf.sh $traffic $i $packet_size" >> log.log
                xterm -e sh iperf.sh $traffic $i $packet_size $log_file &
            done
    
            sleep 11
            echo "\n" >> $log_file
        done
        echo "\n" >> $log_file
    done
    packet_size=`expr $packet_size + 50`
done

