#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
lan='\033[0;36m'
gg=`curl -s http://ja.wchunh.top/sh/gg.txt`;
wchunh() {
echo
echo -e ${yellow}系统要求：Centos7 x64服务器${plain};
echo -e ${yellow}最低1H2G，但推荐至少2H4G${plain};
echo -e ${yellow}先确认放行防火墙安全组（在你购买的服务器控制版面）${plain};
echo -e ${lan}${gg}${plain};
echo -e ${yellow}最后更新时间：2021/8/18${plain};
    echo -e "
  ${green}0.${plain} 退出脚本
————————————————
  ${green}1.${plain} 搭建--梦幻诛仙12职业天域屠龙
  ————————————————
  ${green}2.${plain} 搭建--梦幻诛仙13职业
————————————————
  ${green}3.${plain} ....待更新
————————————————
 "
    echo && read -p "请输入选择 [0-6]: " num

    case "${num}" in
        0) exit 0
        ;;
        1) yum install -y wget && wget http://ja.wchunh.top/sh/mhzx/mz12.sh && chmod +x mz12.sh && ./mz12.sh
        ;;
        2) yum install -y wget && wget http://ja.wchunh.top/sh/mhzx/mz13.sh && chmod +x mz13.sh && ./mz13.sh
        ;;
        3) bash <(curl -Ls http://ja.wchunh.top/sh/mhzx/mhzx.sh)
        ;;
        *) echo -e "${red}请输入正确的数字 [0-2]${plain}"
        ;;
    esac
}

wchunh