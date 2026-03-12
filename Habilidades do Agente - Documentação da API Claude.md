---
created: 2026-03-09T21:51:15 (UTC -03:00)
tags: []
source: https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview
author: 
---

# Habilidades do Agente - Documentação da API Claude

> ## Excerpt
> Agent Skills are modular capabilities that extend Claude's functionality. Each Skill packages instructions, metadata, and optional resources (scripts, templates) that Claude uses automatically when relevant.

---
Habilidades do Agente

## Habilidades do Agente

As Habilidades do Agente são capacidades modulares que ampliam a funcionalidade do Claude. Cada Habilidade inclui instruções, metadados e recursos opcionais (scripts, modelos) que o Claude utiliza automaticamente quando necessário.

## 

Por que usar habilidades?

As habilidades são recursos reutilizáveis baseados no sistema de arquivos que fornecem a Claude conhecimento especializado em áreas específicas: fluxos de trabalho, contexto e melhores práticas que transformam agentes de uso geral em especialistas. Ao contrário dos prompts (instruções em nível de conversa para tarefas pontuais), as habilidades são carregadas sob demanda e eliminam a necessidade de fornecer repetidamente a mesma orientação em várias conversas.

**Principais benefícios** :

-   **Claude Especializado** : Adapte as capacidades para tarefas específicas de cada domínio.
-   **Reduza a repetição** : Crie uma vez, use automaticamente.
-   **Capacidades de composição** : Combine habilidades para criar fluxos de trabalho complexos.

Para uma análise aprofundada da arquitetura e das aplicações práticas das Habilidades de Agente, leia nosso blog de engenharia: [Equipando agentes para o mundo real com Habilidades de Agente](https://www.anthropic.com/engineering/equipping-agents-for-the-real-world-with-agent-skills) .

## 

Utilizando Habilidades

A Anthropic oferece habilidades de agente pré-configuradas para tarefas comuns com documentos (PowerPoint, Excel, Word, PDF), e você também pode criar suas próprias habilidades personalizadas. Ambas funcionam da mesma maneira. Claude as utiliza automaticamente quando relevantes para sua solicitação.

**Habilidades de agente pré-configuradas** estão disponíveis para todos os usuários em claude.ai e por meio da API do Claude. Consulte a seção [Habilidades Disponíveis](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview#available-skills) abaixo para obter a lista completa.

**As Competências Personalizadas** permitem que você combine conhecimento especializado de domínio e conhecimento organizacional. Elas estão disponíveis em todos os produtos da Claude: crie-as no Claude Code, carregue-as via API ou adicione-as nas configurações do claude.ai.

**Comece já:**

-   Para habilidades de agente pré-configuradas: consulte o [tutorial de início rápido](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/quickstart) para começar a usar as habilidades de PowerPoint, Excel, Word e PDF na API.
-   Para habilidades personalizadas: consulte o [Guia de Habilidades do Agente](https://platform.claude.com/cookbook/skills-notebooks-01-skills-introduction) para aprender como criar suas próprias habilidades.

## 

Como funcionam as habilidades

As habilidades aproveitam o ambiente de máquina virtual do Claude para fornecer recursos que vão além do que é possível apenas com comandos. O Claude opera em uma máquina virtual com acesso ao sistema de arquivos, permitindo que as habilidades existam como diretórios contendo instruções, código executável e materiais de referência, organizados como um guia de integração que você criaria para um novo membro da equipe.

Essa arquitetura baseada em sistema de arquivos permite **a divulgação progressiva** : Claude carrega informações em etapas, conforme necessário, em vez de consumir o contexto antecipadamente.

### 

Três tipos de conteúdo de habilidade, três níveis de carregamento.

As habilidades podem conter três tipos de conteúdo, cada um carregado em momentos diferentes:

**Tipo de conteúdo: Instruções** . O cabeçalho YAML da Skill fornece informações de descoberta:

Claude carrega esses metadados na inicialização e os inclui no prompt do sistema. Essa abordagem simplificada permite instalar várias Skills sem penalidade de contexto; Claude apenas sabe que cada Skill existe e quando usá-la.

### 

Nível 2: Instruções (carregadas quando acionadas)

**Tipo de conteúdo: Instruções** . O corpo principal do SKILL.md contém conhecimento processual: fluxos de trabalho, melhores práticas e orientações.

Quando você solicita algo que corresponda à descrição de uma Skill, Claude lê o arquivo SKILL.md do sistema de arquivos via bash. Somente então esse conteúdo entra na janela de contexto.

### 

Nível 3: Recursos e código (carregados conforme necessário)

**Tipos de conteúdo: Instruções, código e recursos** . As habilidades podem incluir materiais adicionais:

**Instruções** : Arquivos Markdown adicionais (FORMS.md, REFERENCE.md) contendo orientações e fluxos de trabalho específicos.

**Código** : Scripts executáveis (fill\_form.py, validate.py) que Claude executa via bash; os scripts fornecem operações determinísticas sem consumir contexto.

**Recursos** : Materiais de referência como esquemas de banco de dados, documentação de API, modelos ou exemplos.

Claude acessa esses arquivos somente quando referenciado. O modelo de sistema de arquivos significa que cada tipo de conteúdo tem diferentes vantagens: instruções para orientação flexível, código para confiabilidade, recursos para consulta factual.

|        Nível        |       Quando carregado        |               Custo do token               |                                  Contente                                   |
|---------------------|-------------------------------|--------------------------------------------|-----------------------------------------------------------------------------|
| **Nível 1: Metadados**  |   Sempre (na inicialização)   | Aproximadamente 100 fichas por habilidade. |                    `name`e `description`do frontmatter YAML                     |
| **Nível 2: Instruções** | Quando a habilidade é ativada |           Menos de 5 mil tokens            |                 SKILL.md corpo com instruções e orientações                 |
| **Nível 3+: Recursos**  |      Conforme necessário      |           Efetivamente ilimitado           | Arquivos agrupados executados via bash sem carregar o conteúdo no contexto. |

A divulgação progressiva garante que apenas o conteúdo relevante ocupe a janela de contexto em um determinado momento.

### 

A arquitetura de habilidades

As habilidades são executadas em um ambiente de execução de código onde Claude tem acesso ao sistema de arquivos, comandos bash e capacidade de executar código. Pense nisso da seguinte forma: as habilidades existem como diretórios em uma máquina virtual, e Claude interage com elas usando os mesmos comandos bash que você usaria para navegar pelos arquivos do seu computador.

![Arquitetura de Habilidades do Agente - mostrando como as Habilidades se integram à configuração do agente e à máquina virtual.](Habilidades%20do%20Agente%20-%20Documenta%C3%A7%C3%A3o%20da%20API%20Claude/agent-skills-architecture.png)

**Como Claude acessa o conteúdo de habilidades:**

Quando uma Skill é acionada, Claude usa o bash para ler o arquivo SKILL.md do sistema de arquivos, trazendo suas instruções para a janela de contexto. Se essas instruções fizerem referência a outros arquivos (como FORMS.md ou um esquema de banco de dados), Claude também lê esses arquivos usando comandos bash adicionais. Quando as instruções mencionam scripts executáveis, Claude os executa via bash e recebe apenas a saída (o código do script em si nunca entra no contexto).

**O que essa arquitetura possibilita:**

**Acesso a arquivos sob demanda** : Claude lê apenas os arquivos necessários para cada tarefa específica. Uma Skill pode incluir dezenas de arquivos de referência, mas se sua tarefa precisar apenas do esquema de vendas, Claude carrega somente esse arquivo. Os demais permanecem no sistema de arquivos, consumindo zero tokens.

**Execução eficiente de scripts** : Quando Claude é executado `validate_form.py`, o código do script nunca é carregado na janela de contexto. Apenas a saída do script (como "Validação aprovada" ou mensagens de erro específicas) consome tokens. Isso torna os scripts muito mais eficientes do que fazer com que Claude gerasse código equivalente dinamicamente.

**Sem limite prático para conteúdo agrupado** : Como os arquivos não consomem contexto até serem acessados, as Skills podem incluir documentação completa da API, grandes conjuntos de dados, exemplos extensivos ou qualquer material de referência necessário. Não há penalidade de contexto para conteúdo agrupado que não seja utilizado.

Esse modelo baseado em sistema de arquivos é o que torna a divulgação progressiva possível. Claude navega pela sua Skill como se você estivesse consultando seções específicas de um guia de integração, acessando exatamente o que cada tarefa exige.

### 

Exemplo: Carregando uma habilidade de processamento de PDF

Eis como Claude carrega e utiliza uma habilidade de processamento de PDF:

1.  **Inicialização** : O prompt do sistema inclui:`PDF Processing - Extract text and tables from PDF files, fill forms, merge documents`
2.  **Solicitação do usuário** : "Extraia o texto deste PDF e resuma-o"
3.  **Claude invoca** : `bash: read pdf-skill/SKILL.md`→ Instruções carregadas no contexto
4.  **Claude determina** : O preenchimento do formulário não é necessário, portanto, o arquivo FORMS.md não é lido.
5.  **Claude executa** : Utiliza as instruções do arquivo SKILL.md para concluir a tarefa.

![Janela de carregamento de habilidades no contexto - mostrando o carregamento progressivo de metadados e conteúdo da habilidade.](Habilidades%20do%20Agente%20-%20Documenta%C3%A7%C3%A3o%20da%20API%20Claude/agent-skills-context-window.png)

O diagrama mostra:

1.  Estado padrão com prompt do sistema e metadados de habilidades pré-carregados.
2.  Claude ativa a habilidade lendo o arquivo SKILL.md via bash.
3.  Claude lê opcionalmente arquivos adicionais incluídos, como o FORMS.md, conforme necessário.
4.  Claude prossegue com a tarefa.

Esse carregamento dinâmico garante que apenas o conteúdo relevante para cada habilidade ocupe a janela de contexto.

## 

Onde as habilidades funcionam

As competências estão disponíveis em todos os produtos de agentes da Claude:

### 

API Claude

A API do Claude suporta tanto Habilidades de Agente pré-construídas quanto Habilidades personalizadas. Ambas funcionam de forma idêntica: especifique a habilidade relevante `skill_id`no `container`parâmetro juntamente com a ferramenta de execução de código.

**Pré-requisitos** : O uso de Skills via API requer três cabeçalhos beta:

-   `code-execution-2025-08-25`\- As habilidades são executadas no contêiner de execução de código
-   `skills-2025-10-02`\- Habilita a funcionalidade de Habilidades
-   `files-api-2025-04-14`\- Necessário para carregar/descarregar arquivos para/do contêiner

Utilize as Habilidades de Agente pré-configuradas referenciando-as `skill_id`(por exemplo, `pptx`\`<nome\_da\_habilidade>\`, \` `xlsx`<nome\_da\_habilidade>\`), ou crie e carregue as suas próprias através da API de Habilidades ( `/v1/skills`endpoints). As Habilidades personalizadas são compartilhadas por toda a organização.

Para saber mais, consulte [Usar habilidades com a API do Claude](https://platform.claude.com/docs/en/build-with-claude/skills-guide) .

### 

Código Claude

[Claude Code](https://code.claude.com/docs/en/overview) suporta apenas habilidades personalizadas.

**Habilidades personalizadas** : Crie habilidades como diretórios com arquivos SKILL.md. Claude as descobre e usa automaticamente.

As habilidades personalizadas no Claude Code são baseadas no sistema de arquivos e não exigem uploads via API.

Para saber mais, consulte [Usar habilidades no código Claude](https://code.claude.com/docs/en/skills) .

### 

SDK do Agente Claude

O [SDK do Agente Claude](https://platform.claude.com/docs/en/agent-sdk/overview) oferece suporte a Skills personalizadas por meio de configuração baseada no sistema de arquivos.

**Habilidades personalizadas** : Crie habilidades como diretórios com arquivos SKILL.md em `.claude/skills/`. Habilite as habilidades incluindo-as `"Skill"`em sua `allowed_tools`configuração.

As habilidades no SDK do agente são então descobertas automaticamente quando o SDK é executado.

Para saber mais, consulte [Habilidades do agente no SDK](https://platform.claude.com/docs/en/agent-sdk/skills) .

### 

Claude.ai

[Claude.ai](https://claude.ai/) suporta tanto habilidades de agente pré-definidas quanto habilidades personalizadas.

**Habilidades de Agente pré-configuradas** : Essas habilidades já estão funcionando em segundo plano quando você cria documentos. Claude as utiliza sem necessidade de configuração adicional.

**Habilidades personalizadas** : carregue suas próprias habilidades como arquivos ZIP em Configurações > Recursos. Disponível nos planos Pro, Max, Team e Enterprise com execução de código habilitada. As habilidades personalizadas são individuais para cada usuário; elas não são compartilhadas em toda a organização e não podem ser gerenciadas centralmente pelos administradores.

Para saber mais sobre como usar Skills no Claude.ai, consulte os seguintes recursos na Central de Ajuda do Claude:

-   [O que são habilidades?](https://support.claude.com/en/articles/12512176-what-are-skills)
-   [Utilizando habilidades em Claude](https://support.claude.com/en/articles/12512180-using-skills-in-claude)
-   [Como criar habilidades personalizadas](https://support.claude.com/en/articles/12512198-creating-custom-skills)
-   [Ensine a Claude a sua maneira de trabalhar usando habilidades.](https://support.claude.com/en/articles/12580051-teach-claude-your-way-of-working-using-skills)

## 

Estrutura de habilidades

Cada Skill requer um `SKILL.md`arquivo com frontmatter YAML:

**Campos obrigatórios** : `name`e`description`

**Requisitos de campo** :

`name`:

-   Máximo de 64 caracteres
-   Deve conter apenas letras minúsculas, números e hífenes.
-   Não pode conter tags XML
-   Não pode conter palavras reservadas: "antrópico", "claude"

`description`:

-   Não pode estar vazio.
-   Maximum 1024 characters
-   Cannot contain XML tags

The `description` should include both what the Skill does and when Claude should use it. For complete authoring guidance, see the [best practices guide](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices).

## 

Security considerations

We strongly recommend using Skills only from trusted sources: those you created yourself or obtained from Anthropic. Skills provide Claude with new capabilities through instructions and code, and while this makes them powerful, it also means a malicious Skill can direct Claude to invoke tools or execute code in ways that don't match the Skill's stated purpose.

If you must use a Skill from an untrusted or unknown source, exercise extreme caution and thoroughly audit it before use. Depending on what access Claude has when executing the Skill, malicious Skills could lead to data exfiltration, unauthorized system access, or other security risks.

**Key security considerations**:

-   **Audit thoroughly**: Review all files bundled in the Skill: SKILL.md, scripts, images, and other resources. Look for unusual patterns like unexpected network calls, file access patterns, or operations that don't match the Skill's stated purpose
-   **External sources are risky**: Skills that fetch data from external URLs pose particular risk, as fetched content may contain malicious instructions. Even trustworthy Skills can be compromised if their external dependencies change over time
-   **Tool misuse**: Malicious Skills can invoke tools (file operations, bash commands, code execution) in harmful ways
-   **Data exposure**: Skills with access to sensitive data could be designed to leak information to external systems
-   **Treat like installing software**: Only use Skills from trusted sources. Be especially careful when integrating Skills into production systems with access to sensitive data or critical operations

## 

Available Skills

### 

Pre-built Agent Skills

The following pre-built Agent Skills are available for immediate use:

-   **PowerPoint (pptx)**: Create presentations, edit slides, analyze presentation content
-   **Excel (xlsx)**: Create spreadsheets, analyze data, generate reports with charts
-   **Word (docx)**: Create documents, edit content, format text
-   **PDF (pdf)**: Generate formatted PDF documents and reports

These Skills are available on the Claude API and claude.ai. See the [quickstart tutorial](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/quickstart) to start using them in the API.

### 

Custom Skills examples

For complete examples of custom Skills, see the [Skills cookbook](https://platform.claude.com/cookbook/skills-notebooks-01-skills-introduction).

## 

Limitations and constraints

Understanding these limitations helps you plan your Skills deployment effectively.

### 

Cross-surface availability

**Custom Skills do not sync across surfaces**. Skills uploaded to one surface are not automatically available on others:

-   As habilidades enviadas para o Claude.ai devem ser enviadas separadamente para a API.
-   As habilidades enviadas via API não estão disponíveis no Claude.ai.
-   As habilidades de código do Claude são baseadas no sistema de arquivos e independentes tanto do Claude.ai quanto da API.

Você precisará gerenciar e carregar as Skills separadamente para cada superfície onde deseja usá-las.

### 

Compartilhamento de escopo

As habilidades possuem diferentes modelos de compartilhamento, dependendo de onde você as utiliza:

-   **Claude.ai** : Apenas para usuários individuais; cada membro da equipe deve fazer o upload separadamente.
-   **API do Claude** : Abrange todo o espaço de trabalho; todos os membros do espaço de trabalho podem acessar as habilidades carregadas.
-   **Claude Code** : Pessoal ( `~/.claude/skills/`) ou baseado em projeto ( `.claude/skills/`); também pode ser compartilhado por meio de plugins do Claude Code.

Atualmente, o Claude.ai não oferece suporte ao gerenciamento administrativo centralizado nem à distribuição de Skills personalizadas para toda a organização.

### 

restrições do ambiente de tempo de execução

O ambiente de execução exato disponível para sua habilidade depende da interface do produto em que você a utiliza.

-   **Claude.ai** :
    -   **Acesso variável à rede** : Dependendo das configurações do usuário/administrador, as Skills podem ter acesso total, parcial ou nenhum acesso à rede. Para mais detalhes, consulte o artigo de suporte [Criar e editar arquivos .](https://support.claude.com/en/articles/12111783-create-and-edit-files-with-claude#h_6b7e833898)
-   **API Claude** :
    -   **Sem acesso à rede** : as habilidades não podem fazer chamadas de API externas nem acessar a internet.
    -   **Sem instalação de pacotes em tempo de execução** : Apenas os pacotes pré-instalados estão disponíveis. Não é possível instalar novos pacotes durante a execução.
    -   **Dependências pré-configuradas apenas** : consulte a [documentação da ferramenta de execução de código](https://platform.claude.com/docs/en/agents-and-tools/tool-use/code-execution-tool) para obter a lista de pacotes disponíveis.
-   **Código Claude** :
    -   **Acesso total à rede** : As habilidades têm o mesmo acesso à rede que qualquer outro programa no computador do usuário.
    -   **A instalação global de pacotes é desencorajada** : as habilidades devem instalar pacotes apenas localmente para evitar interferências no computador do usuário.

Planeje suas habilidades para trabalhar dentro dessas restrições.

## 

Próximos passos

Esta página foi útil?
