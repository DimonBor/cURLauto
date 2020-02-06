#!/bin/bash

#---------------------Script start---------------------

echo "      _   _______ _                 _  "      
echo "     | | | | ___ \ |               | | "
echo "  ___| | | | |_/ / |     __ _ _   _| |_ ___  "
echo " / __| | | |    /| |    / _| | | | | __/ _ \ "
echo "| (__| |_| | |\ \| |___| (_| | |_| | || (_) |"
echo " \___|\___/\_| \_\_____/\__,_|\__,_|\__\___/ "
                                             
                                             
echo "v1.0 Beta"
echo "Develop: DimonBor"
chmod +777 ./cURLauto.sh
#---------------------Execs---------------------
exec 9<./proxies.txt
#---------------------User input---------------------
echo "Enter your request:"
read USER_REQUEST
echo "Enter timeout:"
read TIMEOUT
#---------------------Doing requests---------------------

while read <&9 LINE
	do	
		RESPONSE=$(curl -LI $USER_REQUEST -o /dev/null -w '%{http_code}\n' -s --proxy $LINE --connect-timeout $TIMEOUT)	
		if [ $RESPONSE -eq "200" ]; then
			echo "RESPONSE OK"
		fi
		if [ $RESPONSE -ne "200" ]; then
			echo "RESPONSE BAD"
		fi
	done

#---------------------Ending script---------------------
echo "Done!"
echo "Do you want to continue?[y/n]:"
read INPUT

if [ $INPUT = "y" ]; then ./cURLauto.sh
fi
