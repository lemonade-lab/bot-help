#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv
news="#初次使用先加载依赖"

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV2" ] || mkdir YunzaiV2
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || news="#初始化失败"
cd "${myadress}"

Yunzai22="${myadress}/YunzaiV2/Yunzai-Bot"
readonly Yunzai22

funv2(){
   [ -d ${Yunzai22}"/plugins" ] || echo "未安装V2！"
   [ -d ${Yunzai22}"/plugins" ] || break
}

Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

funv3(){
   [ -d ${Yunzai33}"/plugins" ] || echo "未安装V3！"
   [ -d ${Yunzai33}"/plugins" ] || break
}


while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "依赖" \
"2" "安装" \
"3" "更新" \
"4" "回滚" \
"5" "卸载" \
"6" "修仙" \
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
    fi

#安装
    if [ $OPTION = 2 ]
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
"7" "小雪娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then 
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/Ctrlcvs/xiaoyao-cvs-plugin.git ./plugins/xiaoyao-cvs-plugin/
news="#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/zolay-poi/achievements-plugin.git ./plugins/achievements-plugin/
news="#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || break
cd "${Yunzai33}"
git clone --depth=1 https://gitee.com/Nwflower/flower-plugin.git ./plugins/flower-plugin/
news="#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/waterfeet/xiuxian-emulator-plugin ./plugins/xiuxian-emulator-plugin/
news="#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || break
cd "${Yunzai33}"
git clone https://gitee.com/Acceleratorsky/suiyue.git ./plugins/suiyue/
news="#已执行！"     
read -p "回车并继续..." c
     fi
     if [ $Choise = 6 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
cd ${Yunzai33}""
git clone https://gitee.com/xianxincoder/xianxin-plugin.git ./plugins/xianxin-plugin/
news="#已执行！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 7 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || news="#已安装！"
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || break
cd ${Yunzai33}""
git clone https://gitee.com/XueWerY/xiaoxue-plugin.git ./plugins/xiaoxue-plugin/
news="#已执行！"
read -p "回车并继续..." c
     fi
fi
    fi
    
#更新
    if [ $OPTION = 3 ]
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
"7" "小雪娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then  
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd "${Yunzai33}/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd "${Yunzai33}/plugins/achievements-plugin"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || cd "${Yunzai33}/plugins/flower-plugin"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd "${Yunzai33}/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || cd "${Yunzai33}/plugins/suiyue"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || git pull
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 6 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd "${Yunzai33}/plugins/xianxin-plugin"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 7 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || cd "${Yunzai33}/plugins/xiaoxue-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || git pull
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
fi
    fi
    
#回滚
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
"7" "小雪娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || cd "${Yunzai33}/plugins/xiaoyao-cvs-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || cd "${Yunzai33}/plugins/achievements-plugin"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || cd "${Yunzai33}/plugins/flower-plugin"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || cd "${Yunzai33}/plugins/xiuxian-emulator-plugin"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || cd "${Yunzai33}/plugins/suiyue"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || git revert
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 6 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || cd "${Yunzai33}/plugins/xianxin-plugin"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 7 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || cd "${Yunzai33}/plugins/xiaoxue-plugin"
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || git revert
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || news="#已执行！"
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || read -p "回车并继续..." c
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
fi
    fi
    
#卸载
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
"7" "小雪娱乐" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
     if [ $Choise = 1 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || rm -rf "${Yunzai33}/plugins/xiaoyao-cvs-plugin"
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/xiaoyao-cvs-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 2 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/achievements-plugin" ] || rm -rf "${Yunzai33}/plugins/achievements-plugin"
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/achievements-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 3 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/flower-plugin" ] || rm -rf "${Yunzai33}/plugins/flower-plugin"
[ -d ${Yunzai33}"/plugins/flower-plugin" ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/flower-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 4 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin ] || rm -rf "${Yunzai33}/plugins/xiuxian-emulator-plugin
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 5 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/suiyue" ] || rm -rf "${Yunzai33}/plugins/suiyue"
[ -d ${Yunzai33}"/plugins/suiyue" ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/suiyue" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 6 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xianxin-plugin" ] || rm -rf "${Yunzai33}/plugins/xianxin-plugin"
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/xianxin-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
     if [ $Choise = 7 ]
     then
     funv3
[ ! -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || rm -rf "${Yunzai33}/plugins/xiaoxue-plugin"
[ -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || news="#已执行！"
[ -d ${Yunzai33}"/plugins/xiaoxue-plugin" ] || break
news="#请先安装！"
read -p "回车并继续..." c
     fi
fi
    fi
    
#修仙
    if [ $OPTION = 6 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv\n$news" \
15 50 3 \
"1" "改存档" \
"2" "删存档" \
"3" "改纳戒" \
"4" "改装备" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
     if [ $Choise = 1 ]
     then
     funv3
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_player"
ls
read -p "QQ:" qq
vi $qq".json"
     fi
     
     if [ $Choise = 2 ]
     then
     funv3
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_player"
ls
read -p "QQ:" qq
rm -rf $qq".json"
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_najie"
rm -rf $qq".json"
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_equipment"
rm -rf $qq".json"
     fi
     
     if [ $Choise = 3 ]
     then
     funv3
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_najie"
ls
read -p "QQ:" qq
vi $qq".json"
     fi
     
     if [ $Choise = 4 ]
     then
     funv3
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_equipment"
ls
read -p "QQ:" qq
vi $qq".json"
     fi
     
fi
    fi
else
    exit
fi
done
