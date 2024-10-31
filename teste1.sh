#!/bin/bash

#Variavel para obter o nome do serviço
SERVICE="nginx"

#Variavel em que o status atual do nginx é armazenado
status=$(systemctl is-active nginx)

#Varialvel para obter a data e hora atual
data=$(date "+%Y-%m-%d %H:%M:%S")
 
#Condicional para avaliar o valor da variavel status
if [ "$status" = "active" ]; then	
     echo "Serviço está funcionando $data - $SERVICE - ONLINE" >> online.log
else
     echo "Serviço não está funcionando $data - $SERVICE - OFFLINE" >> offline.log
fi

