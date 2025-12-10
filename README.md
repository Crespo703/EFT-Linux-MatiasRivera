# Examen Final – Programación y Administración de Linux

**Alumno:** Matías Rivera  
**Asignatura:** Programación y Administración de Linux  
**Sistema Operativo:** Ubuntu Linux  

Este proyecto corresponde al Examen Final del ramo y tiene como objetivo demostrar la automatización del despliegue, securización y respaldo de un servidor Linux utilizando scripts en Bash, sin intervención manual del administrador.

---

## 1. Guía de Despliegue.

A continuación, se detallan los pasos necesarios para desplegar correctamente el proyecto desde un sistema Ubuntu limpio.  
**El orden de ejecución de los scripts es obligatorio y no debe alterarse.**

### Paso 1: Clonar el repositorio
```bash
git clone https://github.com/Crespo703/EFT-Linux-MatiasRivera.git
cd EFT-Linux-MatiasRivera
Paso 2: Ejecutar el aprovisionamiento del sistema
Este script instala las dependencias necesarias, configura Docker, crea la estructura del proyecto, genera el contenido web y crea el usuario administrativo del sistema.

bash
Copiar código
sudo bash deploy/setup.sh
Paso 3: Aplicar medidas de hardening
Este script configura el firewall del sistema y endurece el acceso remoto configurando el servicio SSH.

bash
Copiar código
sudo bash security/hardening.sh
Paso 4: Ejecutar el respaldo del sistema
Este script genera un respaldo comprimido del contenido web, utilizando un timestamp para identificar cada backup.

bash
Copiar código
sudo bash maintenance/backup.sh
⚠️ Nota:
No se permite la ejecución manual de comandos. Toda la configuración del sistema debe realizarse exclusivamente mediante los scripts proporcionados.

2. Justificación de Seguridad
Deshabilitar el inicio de sesión remoto del usuario root es una práctica fundamental en la administración segura de sistemas Linux. El usuario root posee privilegios totales sobre el sistema, por lo que permitir su acceso directo mediante SSH expone al servidor a ataques de fuerza bruta, comprometiendo completamente la seguridad del entorno. Al restringir este acceso y operar mediante un usuario administrativo sin privilegios elevados por defecto, se mejora la trazabilidad de las acciones realizadas y se reduce significativamente el impacto de un posible ataque.

El filtrado de puertos a través de un firewall responde al principio de mínima exposición de servicios. Mantener abiertos únicamente los puertos estrictamente necesarios, como SSH y el puerto del servicio web, disminuye la superficie de ataque del sistema y evita accesos no autorizados a servicios internos. Estas medidas permiten proteger la confidencialidad, integridad y disponibilidad del servidor, alineándose con los conceptos de hardening y seguridad defensiva abordados en la Unidad VI del curso.
