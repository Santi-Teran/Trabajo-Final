crear_usuario() {
    read -p "Ingrese el nombre del nuevo usuario: " nombre_usuario
    read -p "Ingrese el directorio personal (dejar en blanco para el predeterminado): " directorio_personal

    if [ -z "$nombre_usuario" ]; then
        echo "El nombre del usuario no puede estar vacío."
        return 1
    fi

    if [ -z "$directorio_personal" ]; then
        directorio_personal="/home/$nombre_usuario"
    fi

    sudo useradd -m -d "$directorio_personal" "$nombre_usuario"

    if [ $? -eq 0 ]; then
        echo "Usuario '$nombre_usuario' creado con éxito."
    else
        echo "Error al crear el usuario."
    fi
}

eliminar_cache() {
    echo "Eliminando archivos temporales y caché..."
    sudo rm -rf /tmp/* 
    sudo rm -rf ~/.cache/*
    echo "Caché del sistema y archivos temporales eliminados."
}

generar_informe() {
    echo "Generando informe de uso del sistema..."
    echo "----- INFORME DE USO DEL SISTEMA -----" > sistema_informe.log
    echo -e "\nUso de CPU:" >> sistema_informe.log
    top -bn1 | grep "Cpu(s)" >> sistema_informe.log
    echo -e "\nUso de memoria:" >> sistema_informe.log
    free -h >> sistema_informe.log
    echo -e "\nUso de disco:" >> sistema_informe.log
    df -h >> sistema_informe.log
    echo "Informe guardado en sistema_informe.log."
}

while true; do
    echo -e "\n\033[1;34mSeleccione una opción:\033[0m"
    echo "1) Crear nuevo usuario"
    echo "2) Eliminar archivos temporales"
    echo "3) Generar informe de uso de recursos"
    echo "4) Salir"
    read -p "Ingrese su opción: " opcion

    case $opcion in
        1) crear_usuario ;;
        2) eliminar_cache ;;
        3) generar_informe ;;
        4) echo "Saliendo..."; exit 0 ;;
        *) echo -e "\033[1;31mOpción no válida.\033[0m" ;;
    esac
done