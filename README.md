# **Automatización de Tareas en Bash**

### Descripción breve del proyecto

Este proyecto implementa un script en **Bash** para automatizar tres tareas comunes en sistemas Linux:

1. **Creación de usuarios** en el sistema con la opción de asignar permisos y directorios.
2. **Eliminación de archivos temporales** y caché para liberar espacio en disco.
3. **Generación de un informe de uso del sistema** que registra la carga de CPU, uso de memoria y espacio en disco.

### Instrucciones de uso

Para ejecutar el script, sigue los pasos a continuación:

1. **Clona el repositorio** en tu sistema:

bash
git clone https://github.com/tu-usuario/tu-repositorio.git
cd tu-repositorio

2. **Da permisos de ejecución al script:**
   chmod +x script.sh

3. **Ejecuta el script con permisos de superusuario** para acceder a todas las funcionalidades:
   sudo ./script.sh

4. **Interactúa con el menú:**
   Selecciona la tarea deseada ingresando el número correspondiente en la consola y sigue las instrucciones proporcionadas.

Ejemplo de uso
A continuación, se muestra cómo el menú interactivo debería verse al ejecutar el script:

Seleccione una opción:

1. Crear nuevo usuario
2. Eliminar archivos temporales
3. Generar informe de uso de recursos
4. Salir
   Ingrese su opción: 1

Estructura del proyecto
script.sh: Script principal en Bash con el menú interactivo.
sistema_informe.log: Archivo de log generado por la opción de informe, donde se registran las estadísticas de CPU, memoria y disco.
Contribuciones
Se aceptan contribuciones en forma de pull requests para mejorar la funcionalidad y compatibilidad del script en diferentes entornos Linux o ampliar sus opciones de configuración.

Para contribuir:

Haz un fork del repositorio.
Crea una rama para tu funcionalidad (git checkout -b nueva-funcionalidad).
Realiza tus cambios y commits (git commit -am 'Descripción de cambios').
Haz push a la rama (git push origin nueva-funcionalidad).
Abre un pull request.
Licencia
Distribuido bajo la Licencia MIT. Consulta el archivo LICENSE para más información.
