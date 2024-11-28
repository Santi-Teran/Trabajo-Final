#!/bin/bash

actualizar_sistema() {
    echo -e "\033[1;33mVerificando actualizaciones disponibles...\033[0m"

    # Ejecutar apt update y capturar toda la salida
    actualizaciones=$(sudo apt update 2>&1 | tee actualizacion.log | grep "packages can be upgraded")

    # Verificar si apt update se ejecutó correctamente
    if [ $? -eq 0 ]; then
        if [ -z "$actualizaciones" ]; then
            echo -e "\033[1;32mEl sistema ya está actualizado. No hay actualizaciones disponibles.\033[0m"
        else
            echo -e "\033[1;33mSe encontraron actualizaciones:\033[0m"
            echo "$actualizaciones"

            # Preguntar si se desea instalar las actualizaciones
            while true; do
                read -p "¿Desea instalarlas ahora? (s/n): " respuesta
                case $respuesta in
                    [sS]) 
                        echo -e "\033[1;33mInstalando actualizaciones...\033[0m"
                        sudo apt upgrade -y >> actualizacion.log 2>&1
                        sudo flatpak update >> actualizacion.log 2>&1
                        sudo snap refresh >> actualizacion.log 2>&1
                        sudo apt-get clean >> actualizacion.log 2>&1
                        sudo apt-get autoclean >> actualizacion.log 2>&1
                        sudo apt-get autoremove >> actualizacion.log 2>&1
                        
                        if [ $? -eq 0 ]; then
                            echo -e "\033[1;32mActualizaciones instaladas con éxito.\033[0m"
                        else
                            echo -e "\033[1;31mError al instalar actualizaciones. Revise 'actualizacion.log'.\033[0m"
                        fi
                        break
                        ;;
                    [nN]) 
                        echo -e "\033[1;31mInstalación cancelada.\033[0m"
                        break
                        ;;
                    *) 
                        echo -e "\033[1;31mOpción no válida. Intente nuevamente.\033[0m"
                        ;;
                esac
            done
        fi
    else
        echo -e "\033[1;31mError al verificar actualizaciones. Revise 'actualizacion.log' para más detalles.\033[0m"
        echo -e "\033[1;34mContenido de actualizacion.log:\033[0m"
        cat actualizacion.log
    fi
}