#!/bin/bash

INPUT_DIR="resultados_scans"
OUTPUT_DIR="resultados_servicos"
mkdir -p "$OUTPUT_DIR"

# Extrair IPs únicos de todos os arquivos do netdiscover
HOSTS=$(grep -Eo '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' $INPUT_DIR/*.txt | sort -u)

for IP in $HOSTS; do
    echo "[+] Escaneando $IP com RustScan + Nmap..."
    rustscan -a $IP -r 1-65535 --ulimit 5000 -- -sV -oN $OUTPUT_DIR/scan_$IP.txt
done

echo "[✔] Escaneamento completo. Resultados em $OUTPUT_DIR"
