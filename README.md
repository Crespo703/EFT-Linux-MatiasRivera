# Examen Final – Programación y Administración de Linux

**Alumno:** Matías Rivera  
**Asignatura:** Programación y Administración de Linux  
**Rol:** Administrador / Ingeniero de Infraestructura  
**Entorno:** Ubuntu Linux  

---

## 1. Guía de Despliegue (Deployment Guide)

A continuación, se describen los pasos **obligatorios y en orden estricto** para desplegar correctamente la infraestructura del proyecto desde un sistema Ubuntu limpio.

### 1. Clonar el repositorio
```bash
git clone https://github.com/Crespo703/EFT-Linux-MatiasRivera.git
cd EFT-Linux-MatiasRivera
2. Ejecutar el script de aprovisionamiento
Este script instala las dependencias base (Docker, UFW, Git), crea la estructura del sistema, genera el contenido web y crea el usuario administrativo.

bash
Copiar código
sudo bash deploy/setup.sh
3. Ejecutar el hardening de seguridad
Este script aplica medidas de seguridad sobre el sistema operativo, configurando el firewall y endureciendo el acceso SSH.

bash
Copiar código
sudo bash security/hardening.sh
4. Ejecutar el backup del sistema
Este script genera un respaldo comprimido del contenido web utilizando un timestamp dinámico.

bash
Copiar código
sudo bash maintenance/backup.sh
⚠️ Importante:
Los scripts deben ejecutarse en el orden indicado. No se permite ejecución manual de comandos fuera de los scripts.

2. Justificación de Seguridad (Hardening)
Deshabilitar el login remoto del usuario root es una medida fundamental de seguridad en sistemas Linux, ya que este usuario posee privilegios absolutos sobre el sistema. Permitir su acceso remoto expone al servidor a ataques de fuerza bruta, comprometiendo totalmente la confidencialidad, integridad y disponibilidad del sistema. Al forzar el acceso mediante un usuario no privilegiado, se reduce significativamente la superficie de ataque y se mejora la trazabilidad de acciones administrativas.

El filtrado de puertos mediante un firewall (UFW) responde al principio de mínima exposición. Mantener abiertos solo los puertos estrictamente necesarios (SSH y el servicio web) evita accesos no autorizados a servicios internos, reduce la posibilidad de explotación de vulnerabilidades y limita el movimiento lateral de un atacante dentro del sistema. Estas prácticas están alineadas con los principios de la Unidad VI y con estándares básicos de hardening utilizados en entornos productivos reales.

3. Registro de Evidencias
Las siguientes evidencias certifican la correcta ejecución de cada módulo del proyecto:

Aprovisionamiento de Infraestructura
Estructura creada en /opt/webapp

Contenido web generado correctamente

Usuario administrativo creado y configurado

Hardening de Seguridad
Firewall activo con puertos controlados

Acceso root deshabilitado por SSH

Respaldo del Sistema
Backup automático generado con timestamp

Conclusión
El proyecto demuestra la capacidad de automatizar la provisión, securización y respaldo de un entorno Linux utilizando scripting en Bash, sin intervención manual, cumpliendo con criterios de reproducibilidad, seguridad y buenas prácticas de administración de sistemas.
