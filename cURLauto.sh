#!/bin/bash

#---------------------Script start---------------------

echo "      _   _______ _                 _  "      
echo "     | | | | ___ \ |               | | "
echo "  ___| | | | |_/ / |     __ _ _   _| |_ ___  "
echo " / __| | | |    /| |    / _| | | | | __/ _ \ "
echo "| (__| |_| | |\ \| |___| (_| | |_| | || (_) |"
echo " \___|\___/\_| \_\_____/\__,_|\__,_|\__\___/ "
                                             
                                             
echo "v1.0 Beta"
echo "Develop: Dimon borshch"
chmod +777 ./cURLauto.sh
#---------------------Execs---------------------
exec 9<./proxies.txt
#---------------------User input---------------------
echo "Enter your request:"
read User_Request

#---------------------Doing requests---------------------

while read <&9 LINE
	do	
		curl $User_Request --proxy $LINE
	done  
#---------------------Ending script---------------------
echo "Done!"
echo "Do you want to continue?[y/n]:"
read input

if [ $input = "y" ]; then ./cURLauto.sh
fi
