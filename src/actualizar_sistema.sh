#!/bin/bash

actualizar_sistema() {
    echo -e "\033[1;33mVerificando actualizaciones disponibles...\033[0m"
    sudo apt-get update >> actualizacion.log 2>&1
    
    actualizaciones=$(apt list --upgradable 2>/dev/null | grep -v "Listing...")

    if [ -n "$actualizaciones" ]; then
        echo -e "\033[1;33mSe encontraron actualizaciones disponibles:\033[0m"
        echo "$actualizaciones" >> actualizacion.log
        echo "$actualizaciones"
        
        while true; do
            read -p "¿Desea instalarlas ahora? (s/n): " respuesta
            case $respuesta in
                [sS]) 
                    echo -e "\033[1;33mInstalando actualizaciones...\033[0m"
                    sudo apt-get upgrade -y >> actualizacion.log 2>&1
                    sudo apt-get clean
                    sudo apt-get autoclean
                    sudo apt-get autoremove
                    if [ $? -eq 0 ]; then
                        echo -e "\033[1;32mActualizaciones instaladas con éxito.\033[0m"
                    else
                        echo -e "\033[1;31mError al instalar actualizaciones. Revise 'actualizacion.log'.\033[0m"
                    fi
                    break
                    ;;
                [nN]) 
                    echo "Instalación cancelada."
                    break
                    ;;
                *) 
                    echo -e "\033[1;31mOpción no válida. Intente nuevamente.\033[0m"
                    ;;
            esac
        done
    else
        echo -e "\033[1;32mEl sistema ya está actualizado. No hay actualizaciones disponibles.\033[0m"
    fi
}