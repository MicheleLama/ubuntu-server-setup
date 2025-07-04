#!/bin/bash

# rsync-backup.sh – Script semplice per backup incrementale locale

echo "📦 Avvio backup..."

# Imposta le directory
ORIGINE="/home"
DESTINAZIONE="/backup/$(date +%F)"

# Crea cartella destinazione se non esiste
mkdir -p $DESTINAZIONE

# Esegui backup con rsync
rsync -aAXv $ORIGINE $DESTINAZIONE --exclude={"*.cache","Downloads","Trash"}

echo "✅ Backup completato in $DESTINAZIONE"
