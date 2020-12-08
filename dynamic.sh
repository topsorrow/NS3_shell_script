## author:ycy
## date:2020/12/7
## function: get random bw, delay, and loss from corresponding files

#get a random delay from bandwidth.dat in /root
bw_sum=`awk '{print NR}' /root/bandwidth.dat|tail -n1`
#echo -e $bw_sum
bw_random=`echo $[$RANDOM % $bw_sum]`
let mybw_random=$bw_random+1
#echo -e $mybw_random
bw_select=`awk -F " " '{print $1}' /root/bandwidth.dat|sed -n "$mybw_random p "`
echo -e $bw_select

#get a random delay from delay.dat in /root
delay_sum=`awk '{print NR}' /root/delay.dat|tail -n1`
#echo -e $bw_sum
delay_random=`echo $[$RANDOM % $delay_sum]`
let mydelay_random=$delay_random+1
#echo -e $mydelay_random
delay_select=`awk -F " " '{print $1}' /root/delay.dat|sed -n "$mydelay_random p "`
echo -e $delay_select

#get a random delay from loss.dat in /root
loss_sum=`awk '{print NR}' /root/loss.dat|tail -n1`
#echo -e $bw_sum
loss_random=`echo $[$RANDOM % $loss_sum]`
let myloss_random=$loss_random+1
#echo -e $myloss_random
loss_select=`awk -F " " '{print $1}' /root/loss.dat|sed -n "$myloss_random p "`
echo -e $loss_select

#get a random delay from bandwidth.dat in /root
bw_sum_1=`awk '{print NR}' /root/bandwidth.dat|tail -n1`
#echo -e $bw_sum_1
bw_random_1=`echo $[$RANDOM % $bw_sum_1]`
let mybw_random_1=$bw_random_1+1
#echo -e $mybw_random_1
bw_select_1=`awk -F " " '{print $1}' /root/bandwidth.dat|sed -n "$mybw_random_1 p "`
echo -e $bw_select_1

#get a random delay from delay.dat in /root
delay_sum_1=`awk '{print NR}' /root/delay.dat|tail -n1`
#echo -e $delay_sum_1
delay_random_1=`echo $[$RANDOM % $delay_sum_1]`
let mydelay_random_1=$delay_random_1+1
#echo -e $mydelay_random_1
delay_select_1=`awk -F " " '{print $1}' /root/delay.dat|sed -n "$mydelay_random_1 p "`
echo -e $delay_select_1

#get a random delay from loss.dat in /root
loss_sum_1=`awk '{print NR}' /root/loss.dat|tail -n1`
#echo -e $loss_sum_1
loss_random_1=`echo $[$RANDOM % $loss_sum_1]`
let myloss_random_1=$loss_random_1+1
#echo -e $myloss_random_1
loss_select_1=`awk -F " " '{print $1}' /root/loss.dat|sed -n "$myloss_random_1 p "`
echo -e $loss_select_1

#get a random delay from bandwidth.dat in /root
bw_sum_2=`awk '{print NR}' /root/bandwidth.dat|tail -n1`
#echo -e $bw_sum_2
bw_random_2=`echo $[$RANDOM % $bw_sum_2]`
let mybw_random_2=$bw_random_2+1
#echo -e $mybw_random_2
bw_select_2=`awk -F " " '{print $1}' /root/bandwidth.dat|sed -n "$mybw_random_2 p "`
echo -e $bw_select_2

#get a random delay from delay.dat in /root
delay_sum_2=`awk '{print NR}' /root/delay.dat|tail -n1`
#echo -e $delay_sum_2
delay_random_2=`echo $[$RANDOM % $delay_sum_2]`
let mydelay_random_2=$delay_random_2+1
#echo -e $mydelay_random_2
delay_select_2=`awk -F " " '{print $1}' /root/delay.dat|sed -n "$mydelay_random_2 p "`
echo -e $delay_select_2

#get a random delay from loss.dat in /root
loss_sum_2=`awk '{print NR}' /root/loss.dat|tail -n1`
#echo -e $loss_sum_2
loss_random_2=`echo $[$RANDOM % $loss_sum_2]`
let myloss_random_2=$loss_random_2+1
#echo -e $myloss_random_2
loss_select_2=`awk -F " " '{print $1}' /root/loss.dat|sed -n "$myloss_random_2 p "`
echo -e $loss_select_2

#final
#temp=`CXXFLAGS="-Wall" ./waf --run "scratch/Standard_NC_EDPF_v1.0 --DataRate1=$bw_select  --DataRate2=$bw_select_1 --DataRate3=$bw_select_2 --Delay1=$delay_select  --Delay2=$delay_select_1 --Delay3=$delay_select_2 --Loss1=$loss_select  --Loss2=$loss_select_1 --Loss3=$loss_select_2"`
echo -e $bw_select $bw_select_1 $bw_select_2 $delay_select $delay_select_1 $delay_select_2 $loss_select $loss_select_1 $loss_select_2 >> /root/data.dat
#echo -e $temp
