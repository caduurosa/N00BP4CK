#!/usr/bin/env bash
set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  echo "Por favor, rode como root (ex.: sudo ./scripts/install.sh)"
  exit 1
fi

echo "[*] Atualizando pacotes..."
apt-get update -y

echo "[*] Instalando pacotes principais..."
apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git \
  python3 \
  python3-pip \
  golang \
  nmap \
  sqlmap

echo "[*] Instalando ffuf e nuclei (via Go)..."
go install github.com/ffuf/ffuf@latest
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

echo "[*] Clone do ExploitDB..."
if [[ ! -d /opt/exploitdb ]]; then
  git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
fi

echo "[+] Nessus precisa ser baixado manualmente:"
echo "    https://www.tenable.com/products/nessus/nessus-essentials"

echo "[+] Instalação concluída."
