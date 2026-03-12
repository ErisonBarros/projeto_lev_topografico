# Como fazer o Deploy no GitHub Pages

Este guia explica passo a passo como realizar o deploy da documentação do projeto utilizando o **GitHub Pages**, especialmente focado na estrutura gerada pelo **MkDocs**.

## 1. Arquivos que devem ser modificados

Para garantir que o deploy funcione corretamente, as seguintes configurações precisam estar ajustadas no seu repositório:

### `mkdocs.yml`
O arquivo `mkdocs.yml` (localizado na raiz do seu projeto) é o coração da configuração. Para o deploy no GitHub Pages, certifique-se de configurar a propriedade `site_url` com o endereço final do seu repositório no GitHub Pages.

**Exemplo:**
```yaml
site_name: Projeto de Levantamento Topográfico
site_url: https://<seu-usuario>.github.io/<nome-do-repositorio>/
```
*Observação: Substitua `<seu-usuario>` e `<nome-do-repositorio>` pelos valores correspondentes.*

### `.github/workflows/` (Opcional, porém recomendado)
Caso você queira que o deploy seja feito de forma automática a cada alteração na branch principal (`main` ou `master`), você deve criar/modificar um arquivo de workflow do **GitHub Actions** (Ex.: `.github/workflows/deploy-mkdocs.yml`).

## 2. Passo a Passo do Deploy Manual

Se você preferir rodar o comando manualmente sem configurar o GitHub Actions, siga os passos abaixo no terminal do seu computador (dentro da pasta raiz do projeto):

1. **Gere a documentação localmente** para verificar se tudo está correto:
   ```bash
   mkdocs build
   ```
2. **Execute o comando de deploy do MkDocs**:
   ```bash
   mkdocs gh-deploy
   ```
   > Esse comando cria internamente a build do seu site e a coloca em uma branch chamada `gh-pages` dentro do seu repositório no GitHub.

## 3. Configuração no GitHub

Após rodar o comando de deploy (ou configurar o Actions), vá até o seu repositório no GitHub para ativar a página:
1. Clique na aba **Settings** (Configurações) do repositório.
2. No menu lateral esquedo, clique em **Pages**.
3. Em *Source* (Fonte) ou *Build and deployment*, escolha:
   - **Deploy from a branch**
   - Na lista suspensa de branches escolhas a branch: `gh-pages` e a pasta `/ (root)`.
4. Clique em **Save**. Após alguns minutos, seu site estará disponível na URL indicada no topo dessa mesma página.

---
Se o processo for configurado via **GitHub Actions**, todo push realizado na branch principal acionará automaticamente a publicação na branch `gh-pages` de forma transparente.
