# Aula 4: Mudança de Estação

## Objetivo

Esta aula detalha o procedimento de **mudança de estação**, uma manobra essencial em levantamentos topográficos que cobrem áreas extensas ou com obstruções. Ao final desta aula, você saberá como mover a Estação Total Geodetic GD2I-8 para uma nova posição e reorientá-la para dar continuidade ao trabalho sem perda de referência.

## 4.1. A Necessidade da Mudança de Estação

A mudança de estação é necessária quando:

- A **área a ser levantada é muito grande** para ser coberta a partir de um único ponto
- Existem **obstáculos** (edificações, árvores, relevo acidentado, etc.) que bloqueiam a visada para os pontos de interesse
- É necessário **aumentar a precisão** em uma área específica através de múltiplas observações
- O levantamento requer **amarração a pontos de controle** distribuídos em diferentes locais

O processo consiste em mover o equipamento para um novo ponto (cujas coordenadas podem ser conhecidas ou não) e orientá-lo a partir de um **ponto de ré** já conhecido, mantendo a continuidade e a precisão do levantamento.

## 4.2. Conceitos Fundamentais

### Ponto de Estação (Estação Anterior)

É o ponto onde a estação total estava posicionada antes da mudança. Este ponto já possui coordenadas conhecidas e foi utilizado para medir outros pontos do levantamento.

### Nova Estação

É o novo ponto para onde a estação total será movida. Idealmente, este ponto já foi medido a partir da estação anterior, de modo que suas coordenadas são conhecidas.

### Ponto de Ré (Backsight)

É um ponto conhecido que será usado como referência para orientar a nova estação. Geralmente, utiliza-se a **estação anterior** como ponto de ré, mas qualquer ponto com coordenadas conhecidas e visível da nova estação pode ser usado.

## 4.3. Procedimento de Mudança de Estação

O procedimento a seguir assume que a nova posição da estação será um ponto que já foi medido a partir da estação anterior.

### Procedimento:

#### 1. Configurar a Nova Posição:

- **Mova a Estação Total** para o novo ponto de estação
- Nivele cuidadosamente o equipamento
- No menu **"Coleta dados"**, selecione **"Definir PT Est"**
- Escolha o **novo ponto da estação** a partir da lista de pontos já medidos
- Meça e insira a **nova altura do instrumento**

> **Importante:** Certifique-se de medir com precisão a altura do instrumento na nova posição, pois erros nesta medida afetarão todas as cotas subsequentes.

#### 2. Estabelecer a Orientação (Ré):

- Selecione a função **"Ins PT Re"** (Inserir Ponto de Ré)
- Escolha o **ponto da estação anterior** como o seu ponto de ré (backsight)
- As coordenadas deste ponto já estão armazenadas na memória do equipamento

#### 3. Colimar e Confirmar:

- O equipamento solicitará que você **vise (colime) o prisma** posicionado no ponto de ré (a estação anterior)
- Instrua o auxiliar a posicionar o prisma exatamente sobre a estação anterior
- Informe a **altura do prisma**
- Após visar o alvo com precisão, **confirme a operação**
- A estação irá calcular a nova orientação e estará pronta para continuar o levantamento

#### 4. Continuar o Levantamento:

- Com a estação reorientada, você pode continuar a **medir e gravar novos pontos** normalmente, como se estivesse na estação original
- Todos os pontos medidos a partir da nova estação terão suas coordenadas calculadas no mesmo sistema de referência

## 4.4. Verificação e Controle de Qualidade

Após realizar a mudança de estação, é fundamental verificar a qualidade da orientação. Uma prática recomendada é:

1. **Medir um ponto de controle** que já foi medido anteriormente
2. **Comparar as coordenadas** obtidas nas duas medições
3. Se a diferença estiver dentro da tolerância aceitável (geralmente poucos centímetros), a mudança foi bem-sucedida
4. Se a diferença for significativa, revise o procedimento e repita a mudança de estação

### Tolerâncias Típicas

| Tipo de Levantamento | Tolerância Planimétrica | Tolerância Altimétrica |
|----------------------|-------------------------|------------------------|
| Cadastral | ± 5 cm | ± 5 cm |
| Topográfico | ± 3 cm | ± 3 cm |
| Geodésico | ± 1 cm | ± 1 cm |

## Resumo do Procedimento

| Etapa | Ação | Menu | Objetivo |
|-------|------|------|----------|
| 1 | Mover e Nivelar | - | Posicionar fisicamente o equipamento no novo ponto |
| 2 | Definir Ponto da Estação | Definir PT Est | Informar ao software a nova localização do instrumento |
| 3 | Inserir Ponto de Ré | Ins PT Re | Selecionar o ponto conhecido que servirá de referência |
| 4 | Colimar a Ré | - | Visar o ponto de ré para que o equipamento calcule a orientação |
| 5 | Continuar Medição | Medir | Prosseguir com a coleta de dados a partir da nova estação |

## 4.5. Mudança de Estação com Ponto Novo

Em algumas situações, pode ser necessário mudar para uma estação cujas coordenadas **não são conhecidas** previamente. Neste caso, o procedimento é ligeiramente diferente:

1. Antes de mover a estação, **meça o novo ponto de estação** a partir da estação atual
2. **Meça também pelo menos dois pontos de ré** que serão visíveis da nova estação
3. Mova a estação para o novo ponto
4. Defina a nova estação usando as coordenadas medidas anteriormente
5. Oriente a estação usando um dos pontos de ré
6. **Verifique a orientação** medindo o segundo ponto de ré e comparando com as coordenadas conhecidas

## Boas Práticas

1. **Planeje as mudanças de estação** antes de ir a campo, identificando pontos estratégicos que permitam boa visibilidade
2. **Sempre meça a nova estação** antes de mover o equipamento
3. **Utilize pelo menos dois pontos de ré** para verificação quando possível
4. **Documente todas as mudanças** de estação em uma caderneta de campo
5. **Verifique a orientação** medindo pontos de controle conhecidos
6. **Evite mudanças excessivas** de estação, pois cada mudança introduz pequenos erros que podem se acumular

## Exercício Prático

Para fixar o conteúdo desta aula, realize o seguinte exercício:

1. Configure a estação em um ponto A e meça 5 pontos ao redor
2. Meça um ponto B que será sua nova estação
3. Realize a mudança de estação para o ponto B, usando A como ponto de ré
4. A partir da nova estação B, meça novamente 2 dos 5 pontos medidos anteriormente
5. Compare as coordenadas obtidas nas duas estações
6. Calcule as diferenças e avalie se estão dentro da tolerância aceitável

## Vídeo Tutorial

Para acompanhar visualmente este procedimento, assista ao vídeo:

[MUDANÇA DE ESTAÇÃO (ESTAÇÃO TOTAL GD2I-8)](https://www.youtube.com/watch?v=oEhSvKX-jOI)

---

**Aula anterior:** [Aula 3: Funções e Programas Avançados](aula-3-funcoes-avancadas.md)

**Voltar para:** [Índice do Módulo](README.md)
