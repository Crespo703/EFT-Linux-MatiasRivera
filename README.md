# Examen Final – Programación y Administración de Linux  
**Autor:** Matías Rivera  
**Repositorio:** EFT-Linux-MatiasRivera  

---

## 1. Guía de Despliegue

### Requisitos
- Sistema operativo Linux (Ubuntu Server/Desktop)
- Permisos de superusuario (sudo)
- Conexión a internet

### Clonar el repositorio
```bash
git clone https://github.com/Crespo703/EFT-Linux-MatiasRivera.git
cd EFT-Linux-MatiasRivera
Orden estricto de ejecución
⚠️ IMPORTANTE: Ejecutar los scripts en este orden

Aprovisionamiento del sistema e infraestructura

bash
Copiar código
sudo bash deploy/setup.sh
Aplicación de políticas de seguridad (Hardening)

bash
Copiar código
sudo bash security/hardening.sh
Generación de respaldos automáticos

bash
Copiar código
sudo bash maintenance/backup.sh
2. Justificación de Seguridad
Deshabilitar el acceso remoto del usuario root y filtrar los puertos abiertos es una práctica fundamental en la administración segura de sistemas Linux. El usuario root posee privilegios totales sobre el sistema, por lo que permitir su acceso directo vía SSH incrementa el riesgo de ataques de fuerza bruta y accesos no autorizados. Una buena práctica de seguridad consiste en utilizar usuarios dedicados con privilegios limitados y elevar permisos solo cuando sea estrictamente necesario mediante sudo.

Por otro lado, la segmentación y filtrado de puertos mediante un firewall permite reducir la superficie de ataque del sistema. Al permitir únicamente los puertos necesarios para la operación del servicio (como SSH y el puerto del servicio web), se bloquean posibles vectores de ataque usados por servicios innecesarios o vulnerables. Estas medidas forman parte de los principios básicos de hardening estudiados en la Unidad VI, orientados a mejorar la confidencialidad, integridad y disponibilidad de la infraestructura.
