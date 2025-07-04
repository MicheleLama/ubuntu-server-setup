# 🛡️ Ubuntu Server Setup

Script per la configurazione iniziale e il hardening di un server Ubuntu (20.04/22.04).

## ⚙️ Funzionalità principali

- Aggiornamenti automatici e cleanup
- Configurazione utente sicuro con accesso SSH
- UFW + Fail2Ban per sicurezza
- Porta SSH personalizzata
- Backup locale con rsync

## 📂 File inclusi

- `setup.sh` → Script completo per configurazione iniziale
- `ufw-rules.sh` → Regole firewall UFW
- `rsync-backup.sh` → Backup incrementale automatico

## 📌 Requisiti

- Ubuntu Server 20.04 o superiore
- Privilegi sudo/root
- Connessione SSH

## 🚀 Uso rapido

```bash
git clone https://github.com/MicheleLama/ubuntu-server-setup.git
cd ubuntu-server-setup
sudo bash setup.sh
