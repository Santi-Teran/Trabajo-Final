#!/bin/bash

crear_usuario() {
    while true; do
        read -p "Ingrese el nombre del nuevo usuario: " nombre_usuario
        if [[ "$nombre_usuario" =~ ^[a-zA-Z0-9._-]+$ ]]; then
            break
        else
            echo "El nombre del usuario contiene caracteres no válidos. Intente nuevamente."
        fi
    done

    while true; do
        read -p "Ingrese el directorio personal (dejar en blanco para usar el predeterminado /home/$nombre_usuario): " directorio_personal
        if [ -z "$directorio_personal" ]; then
            directorio_personal="/home/$nombre_usuario"
            break
        elif [[ "$directorio_personal" =~ ^/ ]]; then
            break
        else
            echo "El directorio debe ser un camino absoluto (comenzar con '/'). Intente nuevamente."
        fi
    done

    sudo useradd -m -d "$directorio_personal" "$nombre_usuario"
    if [ $? -eq 0 ]; then
        echo "Usuario '$nombre_usuario' creado con éxito."
    else
        echo "Error al crear el usuario."
    fi
}
