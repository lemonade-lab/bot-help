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
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv" \
15 50 5 \
"1" "派梦语音" \
"2" "miaoHelp" \
"3" "插件列表" \
"4" "删除插件" \
"5" "逆天改命" \
3>&1 1>&2 2>&3)

x=$?
if [ $x = 0 ]
then
    if [ $OPTION = 1 ]
    then
    funv3
cd ${Yunzai33}"/resources"
[ -d ${Yunzai33}"/resources/voice" ] || mkdir voice
[ -d ${Yunzai33}"/resources/voice" ] || echo "#初始化失败"
[ -d ${Yunzai33}"/resources/voice" ] || read -p "回车并继续..." x
[ -d ${Yunzai33}"/resources/voice" ] || break
cd ${Yunzai33}"/resources/voice"
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || mkdir paimeng
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || echo "#初始化失败"
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || read -p "回车并继续..." x
[ -d ${Yunzai33}"/resources/voice/paimeng" ] || break
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || echo "#Yunzai-Bot-help出错"
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || read -p "回车并继续..." x
[ -e /Yunzai-Bot-Help/Allfile/voice/paimeng/paimeng.zip ] || break
cd /Yunzai-Bot-Help/Allfile/voice/paimeng
cp paimeng.zip ""${Yunzai33}"/resources/voice/paimeng"
cd ${Yunzai33}"/resources/voice/paimeng"
unzip paimeng.zip
[ -e ${Yunzai33}"/plugins/example/派蒙语音v3.js" ] || echo "#未安装插件-派梦语音v3.js"
[ -e ${Yunzai33}"/plugins/example/派蒙语音v3.js" ] || echo "#错误语音的js会导致报错！"
echo "配置已执行"
read -p "回车并继续..." y
    fi
    
    
    if [ $OPTION = 2 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv" \
15 50 3 \
"1" "替换V2" \
"2" "替换V3" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
    if [ $Choise = 1 ]
    then
    funv2
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || echo "#未安装miao"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || read -p "回车并继续..." x
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/help" ] || break
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || echo "#未安装miao"
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || read -p "回车并继续..." x
[ -d ${Yunzai22}"/plugins/miao-plugin/resources/common/theme" ] || break
[ -d /Yunzai-Bot-Help/Allfile/help ] || echo "#Yunzai-Bot-help出错"
[ -d /Yunzai-Bot-Help/Allfile/help ] || read -p "回车并继续..." x
[ -d /Yunzai-Bot-Help/Allfile/help ] || break
cd /Yunzai-Bot-Help/Allfile/help/V2help
cp help-list.js ${Yunzai22}"/plugins/miao-plugin/resources/help"
cp icon.png ${Yunzai22}"/plugins/miao-plugin/resources/help"
cp main-01.png ${Yunzai22}"/plugins/miao-plugin/resources/common/theme"
echo "#已执行替换"
    fi
    if [ $Choise = 2 ]
    then
    funv3
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || echo "#未安装miao"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || read -p "回车并继续..." x
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/help" ] || break
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || echo "#未安装miao"
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || read -p "回车并继续..." x
[ -d ${Yunzai33}"/plugins/miao-plugin/resources/common/theme" ] || break
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || echo "#Yunzai-Bot-help出错"
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || read -p "回车并继续..." x
[ -d "/Yunzai-Bot-Help/Allfile/help" ] || break
cd /Yunzai-Bot-Help/Allfile/help/V3help
cp help-list.js ${Yunzai33}"/plugins/miao-plugin/resources/help"
cp icon.png ${Yunzai33}"/plugins/miao-plugin/resources/help"
cp main-01.png ${Yunzai33}"/plugins/miao-plugin/resources/common/theme"
echo "#已执行替换"    
    fi
read -p "回车并继续..." y
fi
    fi
    
    if [ $OPTION = 3 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n##上下选择##左右确定取消" \
15 50 3 \
"1" "查看V2插件" \
"2" "查看V3插件" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
    if [ $Choise = 1 ]
    then
    funv2
[ ! -d ${Yunzai22}"/plugins" ] || cd "${Yunzai22}/lib/example"
[ ! -d ${Yunzai22}"/plugins" ] || ls
read -p "回车并继续..." y
    fi
    if [ $Choise = 2 ]
    then
    funv2
[ ! -d ${Yunzai33}"/plugins" ] || cd "${Yunzai33}/plugins/example"
[ ! -d ${Yunzai33}"/plugins" ] || ls    
read -p "回车并继续..." y
    fi
fi
    fi
    
    
    if [ $OPTION = 4 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-HelpV1.1.5》" \
--menu "$yourv\n##上下选择##左右确定取消" \
15 50 3 \
"1" "删除V2插件" \
"2" "删除V3插件" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
    if [ $Choise = 1 ]
    then
    funv2
[ ! -d ${Yunzai22}"/plugins" ] || cd "${Yunzai22}/lib/example"
[ ! -d ${Yunzai22}"/plugins" ] || ls
[ ! -d ${Yunzai22}"/plugins" ] || read -p "请输入插件名：" y
[ ! -e ${Yunzai22}"/lib/example/${y}.js" ] ||  echo "#未找到插件"
[ ! -e ${Yunzai22}"/lib/example/${y}.js" ] ||  read -p "回车并继续..." x
[ ! -e ${Yunzai22}"/lib/example/${y}.js" ] ||  break
[ -e ${Yunzai22}"/lib/example/${y}.js" ] || rm -rf "${y}.js"
[ -e ${Yunzai22}"/lib/example/${y}.js" ] || echo "#已执行"
[ -e ${Yunzai22}"/lib/example/${y}.js" ] || read -p "回车并继续..." x
    fi
    if [ $Choise = 2 ]
    then
    funv3
[ ! -d ${Yunzai33}"/plugins" ] || cd "${Yunzai33}/plugins/example"
[ ! -d ${Yunzai33}"/plugins" ] || ls
[ ! -d ${Yunzai33}"/plugins" ] || read -p "请输入插件名：" y
[ ! -e ${Yunzai33}"/plugins/example/${y}.js" ] ||  echo "#未找到插件"
[ ! -e ${Yunzai33}"/plugins/example/${y}.js" ] ||  read -p "回车并继续..." x
[ ! -e ${Yunzai33}"/plugins/example/${y}.js" ] ||  break
[ -e ${Yunzai33}"/plugins/example/${y}.js" ] || rm -rf "${y}.js"
[ -e ${Yunzai33}"/plugins/example/${y}.js" ] || echo "#已执行"
[ -e ${Yunzai33}"/plugins/example/${y}.js" ] || read -p "回车并继续..." x
    fi
fi
    fi
    
        
#逆天改命
    if [ $OPTION = 5 ]
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
    ##修仙设置
    if [ $Choise = 2 ]
    then
Choise=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$yourv" \
15 50 5 \
"1" "改丹药" \
"2" "改装备" \
"3" "改道具" \
"4" "改功法" \
"5" "改商品" \
"6" "改地点" \
"7" "改境界" \
"8" "改怪物" \
"9" "改灵根" \
"10" "改药草" \
3>&1 1>&2 2>&3)
y=$?
if [ $y = 0 ]
then
    echo "待实现！"
    read -p "回车并继续..." x
else
fi
    fi
    ##修仙教程
    if [ $Choise = 3 ]
    then
    echo "待实现！"
    read -p "回车并继续..." x
    fi
else
    echo "请选择！"
    read -p "回车并继续..." x
fi
    fi
else
    exit
fi
done
