#!/bing/bash
#批处理以下操作
#在用户的Documents中新建一个test1文件夹
#在test1文件夹中创建myTry文件
#在myTry文件中写 echo "hello world"
#安装了net-tools
#:<<EOF
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
    sleep 10;
    echo "hello world"
    #/sbin/ifconfig ens33 10.96.0.150
done
#EOF