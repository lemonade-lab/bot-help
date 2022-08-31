#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "#初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "回车并继续..." x
[ -d ${myadress}"/YunzaiV3" ] || exit
cd "${myadress}"

Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22

funv2(){
   [ -d ${Yunzai22}"/plugins" ] || echo "#未安装V2！"
   [ -d ${Yunzai22}"/plugins" ] || read -p "回车并继续..." x
   [ -d ${Yunzai22}"/plugins" ] || break
}

Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

funv3(){
   [ -d ${Yunzai33}"/plugins" ] || echo "#未安装V3！"
   [ -d ${Yunzai33}"/plugins" ] || read -p "回车并继续..." x
   [ -d ${Yunzai33}"/plugins" ] || break
}


while true
do
OPTION=$(whiptail \
--title "《Help-Plugin》" \
--menu "$yourv" \
15 50 5 \
"1" "依赖" \
"2" "列表" \
"3" "安装" \
"4" "更新" \
"5" "回滚" \
"6" "卸载" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then

#依赖
    if [ $OPTION = 1 ]
    then
npm i yaml   #依赖 
npm i superagent   #依赖
npm i promise-retry  #依赖
npm add superagent -w
npm add promise-retry -w
    fi

#列表
    if [ $OPTION = 2 ]
    then
    funv3
cd "${Yunzai33}/plugins"
ls
read -p "回车并继续..." x
    fi

#安装
    if [ $OPTION = 3 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv" \
15 50 5 \
"1" "逍遥图鉴" \
"2" "成就帮助" \
"3" "抽卡设置" \
"4" "我要修仙" \
"5" "闲心娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then 
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "#已安装！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || read -p "回车并继续..." x
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
echo "#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "#已安装！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || read -p "回车并继续..." x
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
echo "#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || echo "#已安装！"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || read -p "回车并继续..." x
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || break
cd "${Yunzai33}"
git clone --depth=1 https://gitee.com/Nwflower/flower-plugin.git ./plugins/flower-plugin/
echo "#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "#已安装！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || read -p "回车并继续..." x
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/waterfeet/xiuxian-emulator-plugin ./plugins/xiuxian-emulator-plugin/
echo "#已执行！"
read -p "回车并继续..." c
     fi

     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "#已安装！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || read -p "回车并继续..." x
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/xianxincoder/xianxin-plugin.git ./plugins/xianxin-plugin/
echo "#已执行！"
read -p "回车并继续..." c
     fi
     
fi
    fi
    
#更新
    if [ $OPTION = 4 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv\n$news" \
15 50 5 \
"1" "逍遥图鉴" \
"2" "成就帮助" \
"3" "抽卡设置" \
"4" "我要修仙" \
"5" "碎月娱乐" \
"6" "闲心娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then  
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd "${Yunzai33}/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd "${Yunzai33}/plugins/achievements-plugin"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || cd "${Yunzai33}/plugins/flower-plugin"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd "${Yunzai33}/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi

     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd "${Yunzai33}/plugins/xianxin-plugin"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     
fi
    fi
    
#回滚
    if [ $OPTION = 5 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv\n$news" \
15 50 5 \
"1" "逍遥图鉴" \
"2" "成就帮助" \
"3" "抽卡设置" \
"4" "我要修仙" \
"5" "碎月娱乐" \
"6" "闲心娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd "${Yunzai33}/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd "${Yunzai33}/plugins/achievements-plugin"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || cd "${Yunzai33}/plugins/flower-plugin"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd "${Yunzai33}/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi

     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd "${Yunzai33}/plugins/xianxin-plugin"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "#已执行！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     
fi
    fi
    
#卸载
    if [ $OPTION = 6 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv\n$news" \
15 50 5 \
"1" "逍遥图鉴" \
"2" "成就帮助" \
"3" "抽卡设置" \
"4" "我要修仙" \
"5" "碎月娱乐" \
"6" "闲心娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || rm -rf "${Yunzai33}/plugins/xiaoyao-cvs-plugin"
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || echo "#已执行！"
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || rm -rf "${Yunzai33}/plugins/achievements-plugin"
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || echo "#已执行！"
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || rm -rf "${Yunzai33}/plugins/flower-plugin"
[ -d ${Yunzai33}"/plugins/flower-plugin" ] || echo "#已执行！"
[ -d ${Yunzai33}"/plugins/flower-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || rm -rf "${Yunzai33}/plugins/xiuxian-emulator-plugin"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || echo "#已执行！"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi

     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || rm -rf "${Yunzai33}/plugins/xianxin-plugin"
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || echo "#已执行！"
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
echo "#请先安装！"
read -p "回车并继续..." c
     fi 
fi
    fi
fi
done
