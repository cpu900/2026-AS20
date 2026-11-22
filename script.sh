#!/bin/bash
#
# Detta skript samlar in grundläggande systeminformation (RECON)
#
# Kan användas för följande attacker:
# [Skriv möjliga attacker ex. Privilegieeskalering via sårbar kernel]
#
# Author:       Frans Schartau
# Last Update:  2026-12-XX


# Färgkoder för snyggare utdata i terminalen 
GREEN='\033[0;32m'
YELLOW='\033[0;33m'  
XX='\033[0m' # Återställer färg


# Rensa skärmen och skriv ut en tydlig banner
clear
echo -e "${YELLOW}***************************************************"
echo "  Välkommen till mitt RECON-skript för Linux-miljö"
echo "  Körs av: $USER | Datum: $(date '+%Y-%m-%d %H:%M:%S')"
echo -e "***************************************************${XX}" 


# 1. SYSTEM & KERNEL
echo -e "\n${GREEN}[+] SYSTEMINFORMATION (OS & Kernel)${XX}"
uname -a


# 2. HÅRDVARA
echo -e "\n${GREEN}[+] HÅRDVARA (CPU & RAM)${XX}"
lscpu | grep "Model name" | sed 's/Model name:\s*/CPU: /'
free -h | awk '/^Mem:/ {print "RAM: " $3 " använt av totalt " $2}'


# X. EGNA TESTER (Komplettera utifrån din tabell)

