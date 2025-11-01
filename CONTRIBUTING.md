""# Guia de Contribuição e Atualização

## Introdução

Este guia destina-se a todos que desejam contribuir para o projeto, seja adicionando novas aulas, corrigindo materiais existentes ou sugerindo melhorias. Seguir estas diretrizes garante a consistência e a qualidade do nosso ecossistema de aprendizagem.

## Entendendo o Ecossistema

O projeto é composto por três plataformas interligadas:

1.  **GitHub**: O repositório central que armazena todo o conteúdo em formato Markdown.
2.  **GitBook**: A plataforma de visualização que transforma os arquivos Markdown em um site navegável para os alunos.
3.  **Site do LABAT**: O portal de pesquisa e extensão do nosso laboratório.

**Toda e qualquer alteração no conteúdo deve ser feita no repositório do GitHub.** O GitBook é atualizado automaticamente a partir das modificações enviadas para a branch principal (`erison.barros`).

## Estrutura de Arquivos

O conteúdo do curso reside inteiramente na pasta `packages/api/`. A estrutura é organizada da seguinte forma:

-   `ementa-da-disciplina/`: Tópicos centrais e conteúdo programático.
-   `aulas/`: Aulas práticas e teóricas.
-   `atividades/`: Exercícios e trabalhos.
-   `material-didatico/`: Tutoriais e guias de software.
-   `manuais/`: Manuais de equipamentos.
-   `assets/images/`: Todas as imagens utilizadas no projeto.

O arquivo `SUMMARY.md` na raiz de `packages/api/` controla a estrutura de navegação do GitBook. **Qualquer adição ou remoção de página deve ser refletida neste arquivo.**

## Como Adicionar uma Nova Aula

Siga os passos abaixo para adicionar uma nova aula ou um novo módulo.

### Passo 1: Crie o Arquivo Markdown

1.  Navegue até a pasta apropriada (ex: `packages/api/aulas/`).
2.  Crie um novo arquivo com a extensão `.md` (ex: `minha-nova-aula.md`).
3.  Escreva o conteúdo da sua aula utilizando a sintaxe Markdown. Utilize os arquivos existentes como modelo para manter a consistência de formatação.

### Passo 2: Adicione Imagens (se necessário)

1.  Salve todas as imagens que você for utilizar na pasta `packages/api/assets/images/`.
2.  Insira a imagem no seu arquivo `.md` utilizando um caminho relativo, como no exemplo:
    ```markdown
    ![Descrição da Imagem](../assets/images/nome-da-sua-imagem.png)
    ```

### Passo 3: Atualize o Sumário (`SUMMARY.md`)

1.  Abra o arquivo `packages/api/SUMMARY.md`.
2.  Adicione um novo item na lista que aponte para o seu novo arquivo. Mantenha a hierarquia e a ordem lógica do sumário.

    ```markdown
    # Sumário

    ...

    ## Aulas

    * [Aula Existente](aulas/aula-existente.md)
    * [Minha Nova Aula](aulas/minha-nova-aula.md)  <-- ADICIONE AQUI

    ...
    ```

## Como Editar uma Aula Existente

1.  Encontre o arquivo `.md` correspondente à aula que você deseja editar dentro da estrutura de pastas.
2.  Abra o arquivo e faça as modificações necessárias.
3.  Não é preciso alterar o `SUMMARY.md` para edições de conteúdo.

## Fluxo de Trabalho com Git e GitHub

Para garantir um controle de versão eficaz e permitir a revisão das contribuições, utilizamos o seguinte fluxo de trabalho baseado em *Pull Requests*.

1.  **Fork do Repositório**: Comece criando uma cópia (fork) do repositório principal para a sua conta no GitHub.

2.  **Clone o seu Fork**: Baixe o seu fork para a sua máquina local.
    ```bash
    git clone https://github.com/SEU-USUARIO/projeto_lev_topografico.git
    ```

3.  **Crie uma Nova Branch**: Nunca trabalhe diretamente na branch principal. Crie uma branch específica para a sua contribuição.
    ```bash
    git checkout -b minha-contribuicao
    ```

4.  **Faça suas Alterações**: Adicione ou edite os arquivos conforme descrito nas seções anteriores.

5.  **Adicione e Commite as Alterações**: Registre suas modificações com uma mensagem de commit clara.
    ```bash
    git add .
    git commit -m "feat: Adiciona nova aula sobre GPS Diferencial"
    ```
    *Use `feat:` para novas funcionalidades/aulas, `fix:` para correções, e `docs:` para melhorias na documentação.*

6.  **Envie suas Alterações (Push)**: Envie a sua branch para o seu fork no GitHub.
    ```bash
    git push origin minha-contribuicao
    ```

7.  **Crie um Pull Request**: Abra o seu fork no site do GitHub e clique no botão "New Pull Request". Descreva suas alterações e envie o Pull Request para a branch `erison.barros` do repositório original.

Sua contribuição será analisada, e poderemos solicitar ajustes antes de integrá-la ao projeto principal. Agradecemos imensamente o seu interesse em melhorar este material!

---
*Última atualização: Outubro de 2025*""
