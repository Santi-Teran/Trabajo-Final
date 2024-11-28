#!/bin/bash

source ./src/crear_usuario.sh
source ./src/eliminar_cache.sh
source ./src/generar_informe.sh
source ./src/actualizar_sistema.sh

while true; do
    echo -e "\n\033[1;34mSeleccione una opción:\033[0m"
    echo "1) Crear nuevo usuario"
    echo "2) Eliminar archivos temporales"
    echo "3) Generar informe de uso de recursos"
    echo "4) Verificar e instalar actualizaciones"
    echo "5) Salir"
    read -p "Ingrese su opción: " opcion

    case $opcion in
        1) crear_usuario ;;
        2) eliminar_cache ;;
        3) generar_informe ;;
        4) actualizar_sistema ;;
        5) echo "Saliendo..."; exit 0 ;;
        *) echo -e "\033[1;31mOpción no válida. Intente de nuevo.\033[0m" ;;
    esac
done