#!/bin/bash
# Menu 
# Mod by t.me/PrinceNewbie
# ==========================
clear

RED="\e[31m"
GREEN="\e[32m"
PURPLE="\e[35m"
YELLOW="\e[33m"
CYAN="\e[36m"
IBGBLUE="\e[1;104m"
PLAIN="\e[0m"

GETIP=$( wget -qO- http://ipecho.net/plain );
#GETHOST=$( cat /etc/hostname ); # this default
GETHOST=$( cat /root/hostname ); # tag # this , delete > # GETHOST=$( cat /etc/hostname ) for default

if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}Skrip perlu dijalankan sebagai root!${PLAIN}"; 
  exit 1
fi

. /etc/os-release
echo -e ""
echo -e "${PURPLE}      ░█▀▀▀█ ░█▄─░█ ░█▀▀▀ 　 ░█▀▀█ ▀█▀ ░█▀▀▀ ░█▀▀█ ░█▀▀▀${PLAIN}" 
echo -e "${PURPLE}      ░█──░█ ░█░█░█ ░█▀▀▀ 　 ░█▄▄█ ░█─ ░█▀▀▀ ░█─── ░█▀▀▀${PLAIN}" 
echo -e "${PURPLE}      ░█▄▄▄█ ░█──▀█ ░█▄▄▄ 　 ░█─── ▄█▄ ░█▄▄▄ ░█▄▄█ ░█▄▄▄${PLAIN}"
echo -e ""         
echo -e "               PUBLIC IP :${CYAN}$GETIP${PLAIN}"   
echo -e "                    HOST :${CYAN}$GETHOST${PLAIN}"     
echo -e "                      OS :${CYAN}Ubuntu $VERSION_ID${PLAIN}"
echo -e ""
echo -e "======================[ Menu Command-List ]========================"
echo -e "                    Welcome to Premium Script"
echo -e "                      ONEPIECEVPN - PROJECT"
echo -e "================================================================="
echo -e ""
echo -e "===================[ SSH & OVPN MENU ]-========================"
echo -e ""
echo -e "* usernew      : Buat akun SSH dan OpenVPN"
echo -e "* trial        : Buat akun SSH dan OpenVPN Trial 24 Jam"
echo -e "* renew        : Memperpanjang Masa Aktif Akun SSH & OpenVPN"
echo -e "* deluser      : Hapus akun SSH dan OpenVPN"
echo -e "* member       : Lihat daftar Member akun SSH dan OpenVPN"
echo -e "* delete       : Hapus akun SSH dan OpenVPN yang sudah expired"
echo -e "* autokick     : Tendang User Menggunakan Tendangan Nuklir Mikey"
echo -e "* ceklim       : Tampilkan Multi Login SSH"
echo -e "* restart      : Mulai ulang service SSH WS Python, Dropbear," 
echo -e "                 Webmin,Squid,OpenVPN, SSH dan Stunnel "
echo -e ""
echo -e "====================[ Wireguard ]==========================="
echo -e ""
echo -e "* addwg        : Buat akun Wireguard"
echo -e "* delwg        : Hapus akun Wireguard"
echo -e "* renewwg      : Perbarui akun Wireguard"
echo -e "* wg show      : Cek tampilan Wireguard"
echo -e ""
echo -e "=====================[ L2TP/IPSEC ]========================="
echo -e ""
echo -e "* addl2tp      : Buat akun L2TP / IPSEC "
echo -e "* dell2tp      : Hapus akun L2TP / IPSEC "
echo -e "* renewl2tp    : Perbarui akun L2TP / IPSEC "
echo -e ""
echo -e "========================[ PPTP ]============================"
echo -e ""
echo -e "* addpptp      : Buat akun PPTP"
echo -e "* delpptp      : Hapus akun PPTP "
echo -e "* renewpptp    : Perbarui akun PPTP "
echo -e ""
echo -e "========================[ SSTP ]============================"
echo -e ""
echo -e "* addsstp      : Buat akun SSTP"
echo -e "* delsstp      : Hapus akun SSTP "
echo -e "* renewsstp    : Perbarui akun SSTP "
echo -e ""
echo -e "========================[ SSR ]============================="
echo -e ""
echo -e "* addssr       : Buat akun shadowsocks-R"
echo -e "* delssr       : Hapus akun shadowsocks-R"
echo -e "* renewssr     : Perbarui akun shadowsocks-R"
echo -e "* ssr          : Tampilkan menu shadowsocks-R lainnya"
echo -e ""
echo -e "===================[ Shadowsocks OBFS ]====================="
echo -e ""
echo -e "* addss        : Buat akun shadowsocks"
echo -e "* delss        : Hapus akun shadowsocks"
echo -e "* renewss      : Perbarui akun shadowsocks"
echo -e ""
echo -e "=======================[ V2RAY ]==========================="
echo -e ""
echo -e "* addws        : Buat akun vmess"
echo -e "* delws        : Hapus akun vmess"
echo -e "* renewws      : Perbarui akun vmess"
echo -e "* certv2ray    : Perbarui serifikat vmess"
echo -e ""
echo -e "=======================[ VLESS ]==========================="
echo -e ""
echo -e "* addvless     : Buat akun vless"
echo -e "* delvless     : Hapus akun vless"
echo -e "* renewvless   : Perbarui akun vless"
echo -e ""
echo -e "=======================[ Trojan ]=========================="
echo -e ""
echo -e "* addtr        : Buat akun trojan"
echo -e "* deltr        : Hapus akun trojan"
echo -e "* renewtr      : Perbarui akun trojan"
echo -e ""
echo -e "=======================[ SYSTEM ]=========================="
echo -e ""
echo -e "* add-host     : Buat domain untuk VPS"
echo -e "* webmin       : Tampilkan menu webmin"
echo -e "* ram          : Cek Penggunaan ram VPS"
echo -e "* reboot       : Reboot VPS"
echo -e "* speedtest    : Speedtest VPS"
echo -e "* info         : Informasi Spek VPS"
echo -e "* about        : Informasi script autossh"
echo -e "* update       : update script servis"
echo -e "=========================================================="
echo -e " Sila masukkan pilihan anda \e[31m[example: usernew]\e[0m "
