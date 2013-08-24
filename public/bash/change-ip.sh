#! /bin/bash 

IPS=`cat games.log | cut -d " " -f 1 | sort | uniq`


function rand_ip {
    let "B1=$RANDOM%255"
    let "B2=$RANDOM%255"
    let "B3=$RANDOM%255"
    let "B4=$RANDOM%255"
    RAND_IP="$B1.$B2.$B3.$B4"
}

for IP in $IPS; do
    rand_ip
    sed -i "" "s/$IP/$RAND_IP/" games.log
done;
