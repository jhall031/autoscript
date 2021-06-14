#!/bin/bash

clear
echo -e ""
echo -e "[1]  Create User"
echo -e "[2]  Delete User"
echo -e "[3]  Check User Login"
echo -e "[4]  User List"
echo -e "[5]  Wireguard"
echo -e "[6]  Xray"
echo -e "[7]  Speedtest"
echo -e "[8]  Benchmark"
echo -e "[9]  Script Info"
echo -e "[x]  Exit"
echo -e ""
read -p "Select From Options [1-8 or x] : " option
case $option in
	1)
	clear
	user-create
	exit
	;;
	2)
	clear
	user-delete
	exit
	;;
	3)
	clear
	user-login
	exit
	;;
	4)
	clear
	user-list
	exit
	;;
	5)
	clear
	user-wireguard
	exit
	;;
	6)
	clear
	wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/Xray_onekey/main/install.sh" && chmod +x install.sh && bash install.sh
	[ -f install.sh ] && rm install.sh
	[ -f tcp.sh ] && rm tcp.sh
	echo -e ""
	exit
	;;
	7)
	clear
	server-speedtest
	exit
	echo -e ""
	exit
	;;
	8)
	clear
	server-benchmark
	;;
	9)
	clear
	script-info
	exit
	;;
	x)
	clear
	exit
	;;
esac
