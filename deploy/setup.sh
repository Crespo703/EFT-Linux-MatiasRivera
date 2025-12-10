#!/usr/bin/env bash
set -e

WEB_DIR="/opt/webapp"
HTML_DIR="$WEB_DIR/html"
COMPOSE_URL="https://gist.githubusercontent.com/DarkestAbed/0c1cee748bb9e3b22f89efe1933bf125/raw/5801164c0a6e4df7d8ced00122c76895997127a2/docker-compose.yml"

# Actualizacion del sistema
apt update -y
apt install -y git curl ufw docker.io docker-compose

# Habilitar Docker
systemctl enable docker
systemctl start docker

# Crear estructura de directorios
mkdir -p "$HTML_DIR"

# Descargar docker-compose.yml
curl -fsSL "$COMPOSE_URL" -o "$WEB_DIR/docker-compose.yml"

# Crear contenido web
cat <<EOF > "$HTML_DIR/index.html"
<html>
  <body>
    <h1>Servidor Seguro Propiedad de Matias_Rivera - Acceso Restringido</h1>
  </body>
</html>
EOF

# Crear usuario sysadmin si no existe
if ! id sysadmin &>/dev/null; then
    useradd -m -s /bin/bash sysadmin
    usermod -aG docker sysadmin
fi

echo "[OK] Setup completado correctamente"

