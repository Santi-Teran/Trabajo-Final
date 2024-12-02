#!/bin/bash

source ./src/crear_usuario.sh
source ./src/eliminar_cache.sh
source ./src/generar_informe.sh
source ./src/actualizar_sistema.sh

AZUL="\033[1;34m"
AMARILLO="\033[1;33m"
CIAN="\033[1;36m"
VERDE="\033[1;32m"
ROJO="\033[1;31m"
RESET="\033[0m"

while true; do
    echo -e "${AZUL}=====================================${RESET}"
    echo -e "${AMARILLO}     MENÚ DE ADMINISTRACIÓN DEL SISTEMA${RESET}"
    echo -e "${AZUL}=====================================${RESET}"
    echo -e "${CIAN}1) Crear nuevo usuario${RESET}"
    echo -e "${CIAN}2) Eliminar archivos temporales${RESET}"
    echo -e "${CIAN}3) Generar informe de uso de recursos${RESET}"
    echo -e "${CIAN}4) Verificar e instalar actualizaciones${RESET}"
    echo -e "${CIAN}5) Salir${RESET}"
    echo -e "${AZUL}=====================================${RESET}"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) crear_usuario ;;
        2) eliminar_cache ;;
        3) generar_informe ;;
        4) actualizar_sistema ;;
        5) echo -e "${VERDE}Saliendo...${RESET}"; exit 0 ;;
        *) echo -e "${ROJO}Opción no válida. Intente nuevamente.${RESET}"; sleep 2 ;;
    esac
done
