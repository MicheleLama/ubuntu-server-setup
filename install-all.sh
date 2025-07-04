#!/bin/bash
# install-all.sh – Script per installare tutto in una volta

echo "🛠️ Avvio configurazione iniziale..."
bash setup.sh || { echo "❌ Errore in setup.sh"; exit 1; }

echo "🛡️ Applico regole firewall personalizzate..."
bash ufw-rules.sh || { echo "❌ Errore in ufw-rules.sh"; exit 1; }

echo "💾 Configuro backup automatico con rsync..."
bash rsync-backup.sh || { echo "❌ Errore in rsync-backup.sh"; exit 1; }

echo "✅ Installazione completata!"
