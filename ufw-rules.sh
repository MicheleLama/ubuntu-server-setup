#!/bin/bash

# ufw-rules.sh – Regole firewall UFW di base

echo "🔐 Abilitazione firewall UFW..."
ufw default deny incoming
ufw default allow outgoing

echo "📡 Abilita porte comuni..."
ufw allow 2222/tcp      # Porta SSH personalizzata
ufw allow 80,443/tcp    # HTTP/HTTPS (se usi web)

echo "🔄 Reload UFW..."
ufw reload

echo "✅ Firewall configurato."
