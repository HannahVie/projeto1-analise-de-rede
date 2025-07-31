#!/bin/bash

# 🧭 Interfaces correspondentes às redes
IF_CORP="eth0"
IF_INFRA="eth1"
IF_GUEST="eth2"

# 🗂 Diretório para salvar os resultados
OUTPUT_DIR="./resultados_scans"
mkdir -p "$OUTPUT_DIR"

echo "[*] Iniciando varreduras nas redes locais..."

# 🔍 Corp Net (10.10.10.0/24)
echo "[+] Escaneando corp_net (10.10.10.0/24) pela interface $IF_CORP..."
netdiscover -i "$IF_CORP" -r 10.10.10.0/24 -PN > "$OUTPUT_DIR/corp_scan.txt"

# 🔍 Guest Net (10.10.30.0/24)
echo "[+] Escaneando guest_net (10.10.30.0/24) pela interface $IF_GUEST..."
netdiscover -i "$IF_GUEST" -r 10.10.30.0/24 -PN > "$OUTPUT_DIR/guest_scan.txt"

# 🔍 Infra Net (10.10.50.0/24)
echo "[+] Escaneando infra_net (10.10.50.0/24) pela interface $IF_INFRA..."
netdiscover -i "$IF_INFRA" -r 10.10.50.0/24 -PN > "$OUTPUT_DIR/infra_scan.txt"

echo "[✔] Varreduras finalizadas! Resultados salvos em: $OUTPUT_DIR"