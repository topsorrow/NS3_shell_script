#!/bin/bash
while read line
do
array=($line) 
bw_select=${array[0]}
bw_select_1=${array[1]}
bw_select_2=${array[2]}
delay_select=${array[3]}
delay_select_1=${array[4]}
delay_select_2=${array[5]}
loss_select=${array[6]}
loss_select_1=${array[7]}
loss_select_2=${array[8]}
temp=`CXXFLAGS="-Wall" ./waf --run "scratch/Standard_NC_EDPF_v1.0 --DataRate1=$bw_select  --DataRate2=$bw_select_1 --DataRate3=$bw_select_2 --Delay1=$delay_select  --Delay2=$delay_select_1 --Delay3=$delay_select_2 --Loss1=$loss_select  --Loss2=$loss_select_1 --Loss3=$loss_select_2"`
echo -e $temp
done < /root/data.dat
