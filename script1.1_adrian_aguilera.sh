#!/bin/bash
#  Script BASH de Ejemplo de MENU
clear
echo "----------MENU DE OPCIONES----------"
echo ""
PS3='Ingrese su opcion a ejecutar : '
options=("cups" "ssh" "apache" "Salir")
select opt in "${options[@]}"
do
    case $opt in
        "cups")
            sudo systemctl cups status
            ;;
        "ssh")
            sudo systemctl ssh status
            ;;
        "apache")
            sudo systemctl apache2 status
            ;;
        "Salir")
            break
            ;;
        *) echo invalid option;;
    esac
done
