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
#Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(curl https://raw.githubusercontent.com/saputribosen/scriptfree/main/ipvps.txt | grep $MYIP | awk '{print $3}')
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Telegram Admin!!"
echo -e "${NC}${LIGHT}Telegram : https://t.me/Opindoo"
exit 0
fi
clear
# Link Hosting Kalian
airabackup="raw.githubusercontent.com/saputribosen/scriptfree/main/backup/"

curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://${airabackup}/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user lizsvrbckup@gmail.com
from lizsvrbckup@gmail.com 
password yourpaswordapp
logfile ~/.msmtp.log
EOF

chown -R www-data:www-data /etc/msmtprc

cd /usr/bin

#wget -O autobackup "https://${airabackup}/autobackup.sh"
wget -O addemail "https://${airabackup}/addemail.sh"
wget -O changesend "https://${airabackup}/changesend.sh"
wget -O startbackup "https://${airabackup}/startbackup.sh"
wget -O stopbackup "https://${airabackup}/stopbackup.sh"
wget -O testsend "https://${airabackup}/testsend.sh"
wget -O backup "https://${airabackup}/backup.sh"
wget -O restore "https://${airabackup}/restore.sh"
wget -O strt "https://${airabackup}/strt.sh"
wget -O limitspeed "https://${airabackup}/limitspeed.sh"
chmod +x addemail
chmod +x changesend
chmod +x startbackup
chmod +x stopbackup
chmod +x testsend
chmod +x autobackup
chmod +x backup
chmod +x restore
chmod +x strt
chmod +x limitspeed
cd
rm -f /root/set-br.sh
