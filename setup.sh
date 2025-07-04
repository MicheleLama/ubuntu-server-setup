#!/bin/bash

# setup.sh - Configurazione iniziale server Ubuntu (20.04 / 22.04)

echo "📦 Aggiornamento pacchetti..."
apt update && apt upgrade -y

echo "👤 Creazione utente sicuro..."
read -p "Nome utente da creare: " newuser
adduser $newuser
usermod -aG sudo $newuser

echo "🔐 Configurazione SSH..."
sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart ssh

echo "🛡️ Firewall UFW..."
ufw allow 2222/tcp
ufw allow OpenSSH
ufw --force enable

echo "📉 Installazione Fail2Ban..."
apt install -y fail2ban

echo "✅ Setup completato. Esegui ora: ssh $newuser@<IP> -p 2222"
