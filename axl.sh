 #!/bin/bash
cd dosya && bash kur.sh
clear 
rm -rf kur.sh 
clear
figlet -f block axl
echo -e '\e[33moooooooooooooooooooooooooooooo'
echo -e '\e[31m[1]Exploit oluştur ve dinle'
echo -e '\e[31m[2]Telefon no pentesti'
echo -e '\e[31m[3]Ddos-dos saldırsı'
echo -e  '\e[31m[4]kamera hack'
echo -e '\e[31m[5]İnfo'
echo -e '\e[31m[6]cıkış'
echo -e '\e[33moooooooooooooooooooooooooooooo'
read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İşlem Numarası : ' sec
case $sec in
    1)cd dosya && bash tst.sh
      ;;
    2)cd dosya && bash tel.sh
      ;;
    3)cd dosya && bash axldos.sh
      ;;
    4)cd dosya && bash tt.sh
      ;;
    5)cd dosya && bash info.sh
      ;;
    6) exit
      ;;
    *)echo 'ERROR numara yablıs'
     
esac
