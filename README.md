# Análise de Rede - Projeto do Curso de Cibersegurança

Este projeto faz parte das atividades do curso de Cibersegurança da escola **Vai na Web**. 

O objetivo é analisar redes internas utilizando ferramentas de varredura como RustScan e Nmap. Com isso, busca-se identificar hosts ativos, serviços em execução e potenciais riscos de segurança e gerar um plano de ação para melhoria de segurança das redes.

---

## Funcionalidades

- Descoberta automática de hosts ativos em sub-redes configuradas  
- Varredura detalhada de portas e serviços com Nmap  
- Geração de resultados organizados para análise manual e criação de relatórios  
- Suporte a múltiplas sub-redes configuradas no projeto  

---

## Redes analisadas

- 10.10.10.0/24  
- 10.10.30.0/24  
- 10.10.50.0/24  

---

## Como usar

1. Clone o repositório  
2. Verifique as sub-redes configuradas no script principal (`scan_servicos.sh`)  
3. Execute os scripts para realizar o scan:  

```bash
./scan_redes.sh
./scan_servicos.sh
```

4. Os resultados das varreduras serão salvos na pasta resultados_servicos/
5. Utilize os resultados para elaboração de relatórios técnicos

## Estrutura do projeto

```bash
/anexos/escaneamento_servicos_automatizado/scan_servicos.sh        # Script de varredura de serviços
/anexos/escaneamento_redes_automatizado/resultados_scans           # Resultados de hosts por redes
/anexos/escaneamento_servicos_automatizado/resultados_servicos     # Resultados de serviços detectados organizados por host
/anexos/Segmentação_de_Rede.png                                    # Desenho de rquitetura da rede
/Analise_Rede/relatorio_final.md                                   # Relatório técnico completo com análise e recomendações
```
