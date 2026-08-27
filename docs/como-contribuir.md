# 🤝 Como Contribuir

> Contribuições são bem-vindas! Veja como participar da evolução deste material.

---

## 🎯 Formas de Contribuir

Você pode contribuir de várias formas:

- 🐛 **Reportar erros** — typos, links quebrados, conteúdo desatualizado
- 💡 **Sugerir melhorias** — novas aulas, exercícios, materiais
- 📝 **Adicionar conteúdo** — novas seções, novos manuais, novos equipamentos
- 🔧 **Corrigir problemas** — bugs, formatação, performance
- 📚 **Traduzir** — versões em outros idiomas (quando aplicável)

## 🚀 Workflow de Contribuição

### 1. Fork este repositório

Clique em **Fork** no canto superior direito da página do GitHub.

### 2. Clone seu fork localmente

```bash
git clone https://github.com/SEU-USUARIO/projeto_lev_topografico.git
cd projeto_lev_topografico
git checkout -b minha-branch
```

### 3. Faça suas alterações

Edite os arquivos `.md` em `packages/api/` (para GitBook) ou `docs/` (para MkDocs).

!!! tip "Convenção de branches"
    Use nomes descritivos:
    - `feature/nova-aula-gps`
    - `fix/correcao-ortografica-aula-3`
    - `docs/atualizar-readme`

### 4. Teste localmente (opcional)

```bash
# Para MkDocs (este site)
mkdocs build --strict
mkdocs serve  # abre em http://localhost:8000

# Para GitBook
# Abra packages/api/SUMMARY.md e veja se a navegação faz sentido
```

### 5. Commit suas alterações

```bash
git add .
git commit -m "feat: adiciona aula sobre processamento PPP"
```

!!! tip "Convenção de commits"
    Use [Conventional Commits](https://www.conventionalcommits.org/):
    - `feat:` — nova funcionalidade
    - `fix:` — correção de bug
    - `docs:` — apenas documentação
    - `refactor:` — refatoração sem mudar comportamento
    - `style:` — formatação, sem mudar lógica
    - `test:` — adicionar testes

### 6. Push e abra Pull Request

```bash
git push origin minha-branch
```

Depois abra um **Pull Request** no GitHub descrevendo suas alterações.

## ✅ Boas Práticas

- 📝 **Markdown consistente** — siga o padrão dos arquivos existentes
- 🔗 **Links válidos** — cheque se os links internos funcionam
- 🖼️ **Imagens otimizadas** — prefira formatos leves (WebP, JPEG otimizado)
- 🌐 **Referências externas** — sempre que citar uma fonte, inclua a URL
- 📚 **ABNT** — quando aplicável (papers, relatórios técnicos)
- 🔒 **LGPD** — nunca incluir dados pessoais sem base legal

## 🔒 Política de LGPD

Este repositório é **público**. Contribuições devem:

- ❌ **NÃO** incluir dados pessoais (nomes, CPFs, e-mails, endereços)
- ❌ **NÃO** incluir fotos com EXIF GPS de pessoas ou propriedades privadas
- ❌ **NÃO** incluir listas de presença, notas individuais, dados de aluno
- ✅ **PODE** incluir conteúdo institucional (ementa, cronograma, rubrica)
- ✅ **PODE** incluir material didático genérico (manuais, exercícios)

Em caso de dúvida, abra uma **issue** antes de submeter o PR.

## 🐛 Reportar Bugs

Abra uma **issue** no GitHub com:

- **Título descritivo** do problema
- **Passos para reproduzir** (se aplicável)
- **Comportamento esperado** vs **observado**
- **Screenshots** (se relevante)
- **Ambiente** — SO, versão do Python, etc (se for bug técnico)

## 💡 Sugerir Melhorias

Use **GitHub Discussions** (se habilitado) ou abra uma **issue** com o label `enhancement`.

## 📞 Contato

**Professor Responsável**: Erison Barros — Departamento de Engenharia Cartográfica / UFPE
**Laboratório**: Laboratório de Automação Topográfica (LABAT)

---

## 📚 Recursos Úteis

- 📖 [Guia do GitHub — Fork, Branch, PR](https://docs.github.com/pt/get-started/quickstart/contributing-to-projects)
- 📖 [Conventional Commits](https://www.conventionalcommits.org/)
- 📖 [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- 📖 [Material for MkDocs — referência](https://squidfunk.github.io/mkdocs-material/reference/)