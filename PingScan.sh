#!/bin/bash

# Encerramento (Se o usuário apertar CTRL+C, o script encerra com código 1)
trap "exit 1" INT

# Variáveis globais
host_up=0
host_down=0
host_total=0


# Função de apresentação (banner na tela)
function apres()
{
        clear
        echo -e "\033[01;34m"
        echo "
  _____      _               _____                      _ _          ___   ___   ___   ___  
 / ____|    | |             / ____|                    (_) |        / _ \ / _ \ / _ \ / _ \ 
| |    _   _| |__   ___ _ _| (___   ___  ___ _   _ _ __ _| |_ _   _| | | | | | | | | | | | |
| |   | | | | '_ \ / _ \ '__\___ \ / _ \/ __| | | | '__| | __| | | | | | | | | | | | | | | |
| |___| |_| | |_) |  __/ |  ____) |  __/ (__| |_| | |  | | |_| |_| | |_| | |_| | |_| | |_| |
 \_____\__, |_.__/ \___|_| |_____/ \___|\___|\__,_|_|  |_|\__|\__, |\___/ \___/ \___/ \___/ 
        __/ |                                                  __/ |                        
       |___/                                                  |___/                 

      Ping Scan"

        echo -e "\033[00;00m"
}


function scan_ping()
{
	while read team
	do
		stat=1
        	while [ $stat -eq 1 ]
        	do
                	ping -c 2 -w 2 "$team" >/dev/null 2>&1

                	if [ $? -eq 0 ]
                	then
                       		echo -e "# Host \"$team\": \033[01;32mUp\033[00;00m"
                        	stat=0
                        	((host_up ++))
                        	((host_total ++))
                	else
                        	echo -e "# Host \"$team\": \033[01;31mDown\033[00;00m"
                        	stat=0
                        	((host_down ++))
                        	((host_total ++))
                	fi
        	done

	done < $1
}


function report()
{
	echo -e "\n--- Relatorio ---"
	echo -e "\033[01;32m- Host Up: \033[00;00m$host_up"
	echo -e "\033[01;31m- Host Down: \033[00;00m$host_down"
	echo -e "\033[01;33m- Host Total: \033[00;00m$host_total"
	echo "--------------------------------------------------"
}

# Mensagem inicial
apres

if [[ $# -eq 1 ]]
then
	scan_ping $1
	report
else
	echo "Usage: $0 <file.txt>"	
fi
