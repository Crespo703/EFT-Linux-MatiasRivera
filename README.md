# Examen Final – Programacion y Administracion en Linux

Este repositorio contiene el desarrollo del Examen Final Transversal del ramo
Programacion y Administracion en Linux. El objetivo del proyecto es automatizar
la provision, endurecimiento y respaldo de un servidor Linux utilizando scripts
en Bash, siguiendo buenas prácticas de seguridad y administración de sistemas.

## Estructura del Proyecto

- deploy/setup.sh: Aprovisionamiento del sistema e instalaciOn de dependencias
- security/hardening.sh: Endurecimiento del sistema y configuracion basica de seguridad
- maintenance/backup.sh: Generacion de respaldos comprimidos con timestamp

## Ejecución

Los scripts deben ejecutarse en el siguiente orden:

```bash
sudo bash deploy/setup.sh
sudo bash security/hardening.sh
sudo bash maintenance/backup.sh
