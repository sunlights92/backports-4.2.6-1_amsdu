if [ $1 = "tcp" ]
then
    echo "iperf -c $2 -M $3" >> $4 
    iperf -c $2 -M $3 >> $4 
elif [ $1 = "udp" ]
then
    echo "iperf -u -c $2 -l $3 -b 100000M" >> $4
    iperf -u -c $2 -l $3 -b 100000M >> $4 
else
    echo "invalid command"
fi


