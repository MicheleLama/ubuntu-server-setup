# 🛡️ Ubuntu Server Setup

Script per la configurazione iniziale e il hardening di un server Ubuntu (20.04/22.04).

## ⚙️ Funzionalità principali

- Aggiornamenti automatici e cleanup
- Configurazione utente sicuro con accesso SSH
- UFW + Fail2Ban per protezione base
- Porta SSH personalizzata
- Regole firewall personalizzate
- Backup locale incrementale con rsync
- 🧩 Esecuzione automatica di tutti i setup

## 📂 File inclusi

- `setup.sh` → Configurazione iniziale (utente, sicurezza, SSH)
- `ufw-rules.sh` → Regole firewall UFW avanzate
- `rsync-backup.sh` → Backup automatico con `rsync`
- `install-all.sh` → Esegue tutti gli script sopra in sequenza

## 📌 Requisiti

- Ubuntu Server 20.04 o superiore
- Privilegi sudo/root
- Connessione SSH abilitata

## 🚀 Uso rapido

```bash
# Clona il repository
git clone https://github.com/MicheleLama/ubuntu-server-setup.git
cd ubuntu-server-setup

# Rendi eseguibili tutti gli script
chmod +x *.sh

# Esegui la configurazione completa
sudo ./install-all.sh

