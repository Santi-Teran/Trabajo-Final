# **Automatización de Tareas en Bash**

### Descripción breve del proyecto

Este proyecto implementa un conjunto de scripts en **Bash** para automatizar tareas comunes de administración en sistemas Linux, ahora con una estructura modularizada para mayor claridad y mantenimiento. Las funcionalidades incluyen:

1. **Creación de usuarios** con validación de entradas y directorios personalizados.
2. **Eliminación de archivos temporales** y caché para liberar espacio en disco.
3. **Generación de un informe de uso del sistema** que registra la carga de CPU, uso de memoria y espacio en disco.
4. **Verificación e instalación de actualizaciones** del sistema, incluyendo mensajes si no hay actualizaciones disponibles.

### Instrucciones de uso

Para ejecutar el script, sigue los pasos a continuación:

1. **Clona el repositorio** en tu sistema:

bash
git clone https://github.com/Santi-Teran/Trabajo-Final
cd Trabajo-Final

2. **Da permisos de ejecución al script:**
   chmod +x script.sh

3. **Ejecuta el script con permisos de superusuario** para acceder a todas las funcionalidades:
   sudo ./script.sh

4. **Interactúa con el menú:**
   Selecciona la tarea deseada ingresando el número correspondiente en la consola y sigue las instrucciones proporcionadas.

### Ejemplo de uso

A continuación, se muestra cómo el menú interactivo debería verse al ejecutar el script:

Seleccione una opción:

1. Crear nuevo usuario
2. Eliminar archivos temporales
3. Generar informe de uso de recursos
4. Verificar e instalar actualizaciones
5. Salir
   Ingrese su opción: 1

### Estructura del proyecto

Trabajo Final/
├── src/
│ ├── crear_usuario.sh
│ ├── eliminar_cache.sh
│ ├── generar_informe.sh
│ ├── actualizar_sistema.sh
├── script.sh

### Contribuciones

Se aceptan contribuciones en forma de pull requests para mejorar la funcionalidad y compatibilidad del script en diferentes entornos Linux o ampliar sus opciones de configuración.

### Para contribuir:

1. Haz un fork del repositorio.
2. Crea una rama para tu funcionalidad (git checkout -b nueva-funcionalidad).
3. Realiza tus cambios y commits (git commit -am 'Descripción de cambios').
4. Haz push a la rama (git push origin nueva-funcionalidad).
5. Abre un pull request.

### Licencia

Distribuido bajo la Licencia MIT. Consulta el archivo LICENSE para más información.
