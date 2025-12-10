#!/usr/bin/env bash

set -e

SRC="/opt/webapp/html"
DEST="/var/backups/webapp"
TIMESTAMP=$(date +"%Y-%m-%d_%H%M")
BACKUP_FILE="backup_web_${TIMESTAMP}.tar.gz"

# Crear destino de backups
mkdir -p "$DEST"

# Crear backup comprimido
tar -czf "/tmp/$BACKUP_FILE" -C "$SRC" .

# Copiar respaldo al destino final
rsync -av "/tmp/$BACKUP_FILE" "$DEST/"

echo "[OK] Backup generado: $BACKUP_FILE"

