# Projeto de Levantamento Topográfico

> **Disciplina do Departamento de Engenharia Cartográfica — Universidade Federal de Pernambuco (UFPE)**
> Laboratório de Automação Topográfica (LABAT)

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-blueviolet?style=for-the-badge)](https://erisonbarros.github.io/projeto_lev_topografico/)
[![GitBook](https://img.shields.io/badge/GitBook-Portal%20do%20Aluno-blue?style=for-the-badge)](https://erisonbarros.gitbook.io/projeto-de-levantamento-topografico/)
[![LABAT](https://img.shields.io/badge/LABAT-UFPE-green?style=for-the-badge)](https://sites.google.com/view/labat/01)
[![Markdown](https://img.shields.io/badge/conte%C3%BAdo-Markdown-lightgrey?style=for-the-badge)](#)

---

## 🎯 Visão Geral

Este é o repositório oficial da disciplina **Projeto de Levantamento Topográfico** do curso de Engenharia Cartográfica da UFPE, mantido pelo **Laboratório de Automação Topográfica (LABAT)**.

O repositório centraliza todo o material didático em **Markdown** — ementa, aulas teóricas e práticas, atividades, manuais de equipamentos, material didático complementar e skills acadêmicas — servindo como **fonte única de verdade** versionada para todas as plataformas do curso.

## 🌐 Ecossistema de Aprendizagem

| Plataforma | Função | Link |
|---|---|---|
| 📚 **GitBook** | Portal principal do aluno (leitura navegável) | [erisonbarros.gitbook.io/projeto-de-levantamento-topografico](https://erisonbarros.gitbook.io/projeto-de-levantamento-topografico/) |
| 💾 **GitHub** | Repositório versionado + Issues + Pull Requests | [github.com/ErisonBarros/projeto_lev_topografico](https://github.com/ErisonBarros/projeto_lev_topografico) |
| 🌎 **GitHub Pages** | Site público institucional | [erisonbarros.github.io/projeto_lev_topografico](https://erisonbarros.github.io/projeto_lev_topografico/) |
| 🔬 **LABAT Google Sites** | Pesquisa, extensão e projetos | [sites.google.com/view/labat/01](https://sites.google.com/view/labat/01) |

## 📂 Estrutura do Repositório

```
projeto_lev_topografico/
├── README.md                        ← este arquivo
├── CONTRIBUTING.md                  ← guia de contribuição
├── docs/                            ← site institucional (GitHub Pages)
│   ├── index.md                     ← página inicial do site
│   ├── README.md                    ← arquitetura do site
│   └── deploy-github-pages.md       ← workflow de publicação
├── aulas/                           ← aulas adicionais da disciplina
│   └── automação Topográfica/       ← automação de desenhos técnicos
├── packages/api/                    ← conteúdo principal do curso (GitBook)
│   ├── SUMMARY.md                   ← navegação GitBook
│   ├── ementa-da-disciplina/        ← ementa + temas centrais
│   │   ├── drones-topograficos.md
│   │   ├── processamento-gnss.md
│   │   ├── processamento-estatico-rapido.md
│   │   ├── estacoes-totais-roboticas.md
│   │   └── estacao-total-geodetic-gd2i-8/   ← 4 aulas práticas
│   ├── manual-de-equipamentos.md    ← operação e manutenção
│   ├── instalar-a-base.md           ← estação base GNSS
│   ├── aulas/                       ← aulas teóricas + práticas
│   ├── atividades/                  ← exercícios e trabalhos
│   │   └── conceitos-chave-para-entender-a-automacao/
│   ├── material-didatico/           ← tutoriais, guias de software
│   │   ├── programacao-para-automacao-de-tarefas-em-python*.md
│   │   ├── aula-de-pyqgis/          ← PyQGIS prático
│   │   ├── autocad/
│   │   ├── lisp/
│   │   └── expressoes-no-qgis-para-topografia.md
│   ├── atividade-2025.1/            ← atividades da turma 2025.1
│   ├── turmas/                      ← turmas (estrutura LGPD-safe)
│   ├── mapas/                       ← mapas temáticos do programa
│   ├── proposta-comercial.md
│   └── trabalho.md
├── legal-document-explainer/        ← skill exemplo (modelo)
└── mkdocs.yml                       ← configuração MkDocs (em transição)
```

## 🗂️ Conteúdo em Destaque

### 📋 Ementa
- **Drones Topográficos** — RPAS, fotogrametria, processamento
- **Estações Totais Robóticas** — automatização, prismas, rastreamento
- **Estação Total Geodetic GD2i-8** — 4 aulas práticas detalhadas
- **Processamento GNSS** — estático, estático rápido, RTK
- **Processamento Estático Rápido** — linha de base curta

### 🎓 Aulas
- **[Automatização de Desenhos Técnicos Topográficos e Cartográficos](https://github.com/ErisonBarros/projeto_lev_topografico/blob/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/aula_automatizacao_desenhos_topograficos.md)** — material completo com roteiro de slides, exemplos AutoLISP/Python/QGIS, exercícios e projeto prático; [apresentação HTML com 31 slides no GitHub Pages](https://erisonbarros.github.io/projeto_lev_topografico/apresentacao/automacao-topografica/); [arquivos da apresentação no GitHub](https://github.com/ErisonBarros/projeto_lev_topografico/tree/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/apresentacao_completa); [página do LABAT](https://erisonbarros.github.io/projeto_lev_topografico/sobre-labat/)
- **[Exercício Integrador — Automação de Desenhos Técnicos](aulas/automação%20Topográfica/exercicio_integrador_grupos_5.md)** — atividade extensa para grupos de cinco alunos, com planejamento, reconhecimento, metodologia, dados, CRS, processamento, AutoLISP/Python/QGIS, QA/QC, produtos, relatório e apresentação; [página HTML do exercício em grupo](https://erisonbarros.github.io/projeto_lev_topografico/exercicio-grupo-5/).
- **[Exercício de Perfis Topográficos — CAD e QGIS](https://github.com/ErisonBarros/projeto_lev_topografico/blob/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/exercicio_perfis_topograficos_cad_qgis.md)** — estaqueamento de 20 em 20 m, seções transversais a cada 500 m com 10 m para cada lado, extração no PE3D, roteiro com azimute/distância/cota e planilha de diferenças.
- **Planejamento de Obra de Levantamento Topográfico** *(nova)* — processo integrado: problema, escopo, reconhecimento, rede de apoio, método, equipe, segurança, QC, entrega
- Introdução ao LandXML
- Comandos do AutoCAD para Topografia
- Configurações necessárias no CAD
- Orientações sobre AutoCAD para Topografia
- Understanding Projects

### 🔧 Manuais e Equipamentos
- **Manual de Equipamentos** — operação e manutenção
- **Instalar a Base** — estação base GNSS

### 📚 Material Didático
- **Python para Automação** — produtividade com scripts
- **AutoCAD** — tutoriais + ChatGPT aplicado no AutoCAD
- **LISP** — rotinas + como carregar automaticamente
- **PyQGIS** — polígonos, azimutes, camadas, visualização, automação
- **Expressões no QGIS para Topografia**

### 📐 Atividades
- Conceitos-chave para entender a automação
- Exemplos de aplicações da automação
- Softwares topográficos
- Exercício 1

## 🤝 Como Contribuir

Contribuições são bem-vindas! Para sugerir melhorias, corrigir erros ou adicionar conteúdo:

1. **Fork** este repositório
2. Crie uma **branch** descritiva (`feature/nova-aula-gps`, `fix/correcao-aula-3`, ...)
3. Faça suas alterações em arquivos `.md`
4. Abra um **Pull Request** com descrição clara

Veja o guia completo em [CONTRIBUTING.md](CONTRIBUTING.md).

## 📜 Licença

Material didático de uso acadêmico. Sem arquivo `LICENSE` formal — uso restrito ao contexto da disciplina UFPE/LABAT até publicação oficial.

## 📞 Contato

- **Professor Responsável**: Erison Barros — Departamento de Engenharia Cartográfica / UFPE
- **Laboratório**: Laboratório de Automação Topográfica (LABAT)

---

<p align="center">
  <em>Última atualização: Agosto de 2026 · </em>
</p>
