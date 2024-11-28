actualizar_sistema() {
    echo -e "\033[1;33mVerificando actualizaciones disponibles...\033[0m"
    actualizaciones=$(sudo apt update 2>&1 | grep "packages can be upgraded")
    
    if [ $? -eq 0 ]; then
        if [ -z "$actualizaciones" ]; then
            echo -e "\033[1;32mEl sistema ya está actualizado. No hay actualizaciones disponibles.\033[0m"
        else
            echo -e "\033[1;33mSe encontraron actualizaciones.\033[0m"
            while true; do
                read -p "¿Desea instalarlas ahora? (s/n): " respuesta
                case $respuesta in
                    [sS]) 
                        echo -e "\033[1;33mInstalando actualizaciones...\033[0m"
                        sudo apt upgrade -y >> actualizacion.log 2>&1
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
        fi
    else
        echo -e "\033[1;31mError al verificar actualizaciones. Revise 'actualizacion.log'.\033[0m"
    fi
}