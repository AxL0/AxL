clear
        echo -e '\e[37m ####################################################'
        echo -e '\e[37m #                 Code: By AxL                     #'
        echo -e '\e[37m ####################################################'
        echo -e ''
        read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Tel. alan kodu : ' numara

        if [[ $numara == 0530 ||  $numara == 0531 ||  $numara == 0532 ||  $numara == 0533 ||  $numara == 0534 ||  $numara == 0535 ||  $numara == 0536 ||  $numara == 0537 ||  $numara == 0538 ||  $numara == 0561 ]]; then
                clear
                echo -e '\e[37mGirilen alan kodu , TURKCELL operatör şirketine aittir.'
                sleep 5
                clear
                figlet AxL
        elif [[ $numara == 0501 ||  $numara == 0505 ||  $numara == 0506 ||  $numara == 0507 ||  $numara == 0551 ]]; then
                clear
                echo -e '\e[37mGirilen alan kodu , TURK TELEKOM operatör şirketine aittir.'
                sleep 5
                clear
                figlet AxL
        elif [[ $numara == 0552 ||  $numara == 0553 ||  $numara == 0554 ||  $numara == 0555 ||  $numara == 0559 ]]; then
                clear
                echo -e '\e[37mGirilen alan kodu , BİMCELL  operatör şirketine aittir.'
                sleep 5
                clear
                figlet AxL

        elif [[ $numara == 0540 ||  $numara == 0541 ||  $numara == 0542 ||  $numara == 0543 ||  $numara == 0544 ||  $numara == 0545 ||  $numara == 0546 ||  $numara == 0547 ||  $numara == 0548 ||  $numara == 0549 ]]; then
                clear
                echo -e '\e[37mGirilen alan kodu , VODOFONE operatör şirketine aittir.'
                sleep 5
                clear
                figlet AxL
        else
                echo -e "Üzgünüm , sistemimizde bu alan adına sahip operatör şirketi yok"
        fi
