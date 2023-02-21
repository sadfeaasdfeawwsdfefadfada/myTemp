#!/bing/bash
#批处理以下操作
#在用户的Documents中新建一个test1文件夹
#在test1文件夹中创建myTry文件
#在myTry文件中写 echo "hello world"
#安装了net-tools
#:<<EOF
runnum=0
while true
do
    ########################################
    #适用于17.0之前修改该mac
    #/sbin/ifconfig ens33 down;
    #/sbin/ifconfig ens33 hw ether 00:0C:29:BB:21:E8
    #/sbin/ifconfig ens33 up;
    #######################################
    #适用于20.4修改mac
    macchanger -r ens33
    # sudo macchanger –m c2:43:bc:1c:62:01 enp0s3 手动修改mac
    # sudo macchanger –p enp0s3 还原原始mac
    min_num=2
    max_num=254
    dist=$(echo "$max_num-$min_num"|bc)
    num=$(($RANDOM%($dist+1)+$min_num))
    sed -r "s/[0-9]{1,3}\//$num\//g" /etc/netplan/01-network-manager-all.yaml -i
    sudo netplan apply
    runnum=$runnum+1
    echo "第"$(($runnum))"次执行"
    sleep 600; 
done
#EOF