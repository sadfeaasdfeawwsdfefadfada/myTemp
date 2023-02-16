#!/bing/bash
#批处理以下操作
#在用户的Documents中新建一个test1文件夹
#在test1文件夹中创建myTry文件
#在myTry文件中写 echo "hello world"
#安装了net-tools
#:<<EOF
while true
do
    /sbin/ifconfig ens33 down;
    /sbin/ifconfig ens33 hw ether 00:0C:29:BB:21:E8
    #/sbin/ifconfig ens33 10.96.0.150
    /sbin/ifconfig ens33 up;
    sleep 10;
    echo 'haha23';
done
#EOF