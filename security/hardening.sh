#!/usr/bin/env bash

set -e

# Firewall
ufw default deny incoming
ufw default allow outgoing
ufw allow 22
ufw allow 8080
ufw --force enable

# Instalar SSH si no esta presente
if [ ! -f /etc/ssh/sshd_config ]; then
    apt update
    apt install -y openssh-server
fi

# Hardening SSH
sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart ssh


# Permisos de menor privilegio
chmod 600 /opt/webapp/docker-compose.yml
chmod 700 /maintenance/backup.sh 2>/dev/null || true

echo "[OK] Hardening aplicado correctamente"

