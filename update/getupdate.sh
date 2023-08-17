#!/bin/bash
# My Telegram : https://t.me/Opindoo
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(curl https://raw.githubusercontent.com/saputribosen/scriptfree/main/ipvps.txt | grep $MYIP | awk '{print $3}')
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/liz_mine"
exit 0
fi
clear
airaupdate="raw.githubusercontent.com/saputribosen/scriptfree/main/update"
# change direct
cd /usr/bin
# remove file
rm menu
rm -rf menu
# Download update
wget -O menu "https://${airaupdate}/menu.sh"
wget -O maddssh "https://${airaupdate}/maddssh.sh"
wget -O mbackup "https://${airaupdate}/mbackup.sh"
wget -O maddxray "https://${airaupdate}/maddxray.sh"
wget -O msetting "https://${airaupdate}/msetting.sh"
wget -O start-menu "https://${airaupdate}/start-menu.sh"
# change Permission
chmod +x menu
chmod +x maddssh
chmod +x maddxray
chmod +x mbackup
chmod +x msetting
chmod +x start-menu
#change direct
cd /root
# clear
clear
echo -e "Succes Update Menu"
sleep 3
