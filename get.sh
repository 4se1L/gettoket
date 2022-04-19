# Jangan Di Recode Yaa Bossq :)
# Tools Ini Hanya Untuk Pembelajaran Saja :)
#===========================================
# Author : 4se1Lav3ndoR
# Type : bash
# name : Get Token Facebook
# Github : 4se1L
cd data
trap ctrl_c INT
ctrl_c() {
echo "\033[31;1m CTRL + C Terdeteksi"
sleep 4
echo "\033[32;1m Keluar Dari Program"
exit
}
python2 logo.py
echo
if [ -z $1 ]; then
	echo "\033[31;1mbash $1 <username> <password>"
	exit
elif [ -z $2 ]; then
	echo "\033[31;1mbash $1 <username> <password>"
	exit
else
	python2 cek_module.py
	if [ -d /data/data/com.termux/files/usr/lib/python2.7/site-packages/requests ]; then
	        echo "\033[32;1m[+] 'requests' terinstall"
		sleep 4
		python2 get.py $1 $2
	else
        	echo "\033[31;1m[-] 'requests' belum di install tolol"
	        read -p "\033[37;1m[=] pencet enter buat nginstay ygy " b
 	         pkg install python2
              pip2 install requests
	        sh $0
	fi
#	python2 get.py $1 $2
fi
