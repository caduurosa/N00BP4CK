# N00BP4CK

## Ferramentas já incluídas
- [Nmap](https://nmap.org) — scanner de rede.
- [ExploitDB](https://www.exploit-db.com) — database de exploits/PoCs.
- [ffuf](https://github.com/ffuf/ffuf) — fuzzer para web.
- [sqlmap](https://sqlmap.org) — SQL injection automation.
- [nuclei](https://nuclei.projectdiscovery.io) — scanner baseado em templates.
- [Nessus](https://www.tenable.com/products/nessus) — vulnerability scanner.

## Instalação rápida
```bash
git clone https://github.com/caduurosa/N00BP4CK.git
cd N00BP4CK
chmod +x scripts/install.sh
sudo ./scripts/install.sh
```

## Estrutura
- `manifests/tools.yaml` → catálogo padronizado.
- `docs/` → guias individuais de cada ferramenta.
- `tools/` → setups específicos (dockerfiles, labs).
- `scripts/` → scripts de instalação.
- `docker/` → workspace isolado.

---
  
**Aviso**: **Coleção educacional de ferramentas de pentest, configuradas para uso em labs/CTFs ou infra própria. Nunca utilize sem permissão explícita. Não compactuo ou me responsabilizo por qualquer mau uso das ferramentas listadas**.
