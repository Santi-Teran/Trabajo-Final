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