#!/bin/bash

eliminar_cache() {
    echo "Eliminando archivos temporales y caché..."
    sudo rm -rf /tmp/* 
    sudo rm -rf ~/.cache/*
    echo "Caché del sistema y archivos temporales eliminados."
}