#!/bin/bash
yourv=$(cat /etc/redhat-release)
readonly yourv

myadress="/home/lighthouse"
readonly myadress

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/YunzaiV3" ] || mkdir YunzaiV3
[ -d ${myadress}"/YunzaiV3" ] || echo "initialization failed初始化失败"
[ -d ${myadress}"/YunzaiV3" ] || read -p "Enter and continue回车并继续..." c
cd "${myadress}"



Yunzai33="${myadress}/YunzaiV3/Yunzai-Bot"
readonly Yunzai33

funv3(){
   [ -d ${Yunzai33}"/plugins" ] || echo "Not installed#未安装V3！"
   [ -d ${Yunzai33}"/plugins" ] || read -p "Enter and continue回车并继续..." x
   [ -d ${Yunzai33}"/plugins" ] || break
}



while true
do
OPTION=$(whiptail \
--title "《Help-Extension》" \
--menu "$yourv" \
15 50 5 \
"1" "逆天改命" \
"2" "miaoHelp" \
"3" "插件列表" \
"4" "派梦语音" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 4 ]
    then
    funv3
cd ${Yunzai33}"/resources"
[ -d ${Yunzai33}"/resources/voice" ] || mkdir voice
[ -d ${Yunzai33}"/resources/voice" ] || echo "initialization failed初始化失败"
[ -d ${Yunzai33}"/resources/voice" ] || read -p "Enter and continue回车并继续..." x
[ -d ${Yunzai33}"/resources/voice" ] || break
cd ${Yunzai33}"/resources/voice"
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || mkdir paimeng
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || echo "initialization failed初始化失败"
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || read -p "Enter and continue回车并继续..." x
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || break
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || echo "#Yunzai-Bot-help出错"
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || read -p "Enter and continue回车并继续..." x
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || break
cd /Yunzai-Bot-Help/Allfile/voice/paimeng
cp paimeng.zip ""${Yunzai33}"/resources/voice/paimeng"
cd ${Yunzai33}"/resources/voice/paimeng"
unzip paimeng.zip
[ -e ${Yunzai33}"/plugins/example/派蒙语音v3.js" ] || echo "Not installed#未安装插件-派梦语音v3.js"
[ -e ${Yunzai33}"/plugins/example/派蒙语音v3.js" ] || echo "#错误语音的js会导致报错！"
echo "配置已执行"
read -p "Enter and continue回车并继续..." y
    fi
    
    
    if [ $OPTION = 2 ]
    then
funv3
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || echo "Not installed#未安装miao"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || read -p "Enter and continue回车并继续..." x
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || break
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || echo "Not installed#未安装miao"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || read -p "Enter and continue回车并继续..." x
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || break
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || echo "#Yunzai-Bot-help出错"
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || read -p "Enter and continue回车并继续..." x
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || break
cd /Yunzai-Bot-Help/Allfile/help/V3help
cp help-list.js ${Yunzai33}"/plugins/miao-plugin/resources/help"
cp icon.png ${Yunzai33}"/plugins/miao-plugin/resources/help"
cp main-01.png ${Yunzai33}"/plugins/miao-plugin/resources/common/theme"
echo "#已执行替换"
read -p "Enter and continue回车并继续..." y
    fi
    
    if [ $OPTION = 3 ]
    then
    funv3
[ ! -d ${Yunzai33}"/plugins" ] || cd "${Yunzai33}/plugins/example"
[ ! -d ${Yunzai33}"/plugins" ] || ls    
read -p "Enter and continue回车并继续..." y
    fi
    
#逆天改命
    if [ $OPTION = 1 ]
    then
    funv3
    Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv" \
15 50 5 \
"1" "存档设置" \
"2" "修仙设置" \
"3" "操作教程" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
 
 ##存档设置
    if [ $Choise = 1 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv" \
15 50 5 \
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
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_player"
ls
read -p "QQ:" qq
vi $qq".json"
     fi
     
     if [ $Choise = 2 ]
     then
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
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
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_najie"
ls
read -p "QQ:" qq
vi $qq".json"
     fi
     
     if [ $Choise = 4 ]
     then
[ -d ${Yunzai33}"/plugins/xiuxian-emulator-plugin" ] || break
cd ${Yunzai33}"/plugins/xiuxian-emulator-plugin/resources/data/xiuxian_equipment"
ls
read -p "QQ:" qq
vi $qq".json"
     fi
fi
    fi
##/存档设置    
fi
    fi
##/逆天改命    
else
    exit
fi
done
