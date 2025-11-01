# Aula 3: Funções e Programas Avançados

## Objetivo

Esta aula explora duas funções importantes da Estação Total Geodetic GD2I-8: a **Medição Remota da Elevação (REM)** e a **Locação de Pontos (Calcular Ponto)**. O domínio dessas ferramentas permite a medição de alturas inacessíveis e a materialização de projetos em campo com precisão.

## 3.1. Medição Remota da Elevação (REM)

A função **REM** é utilizada para medir a altura de um objeto sem a necessidade de colocar um prisma diretamente sobre ele. Isso é ideal para medir a altura de postes, edifícios, torres, ou qualquer outro elemento vertical de difícil acesso.

### Princípio de Funcionamento

O programa REM funciona através da medição de dois pontos verticalmente alinhados: a base e o topo do objeto. A estação total calcula automaticamente a diferença de nível (DN) entre esses dois pontos, fornecendo a altura do objeto.

### Procedimento:

#### 1. Acessar o Programa REM:

- No menu de programas do equipamento, selecione o comando **"REM"**
- Escolha a opção **"Sem altura do prisma"** se você for medir a partir da base do objeto

#### 2. Medir a Base:

- Vise e meça a **base do objeto** que você deseja medir
- O equipamento utilizará este ponto como a cota de referência (nível zero)
- Pressione o botão de medição para registrar este ponto

#### 3. Medir o Topo:

- **Sem mover a estação**, levante a luneta verticalmente até o **topo do objeto**
- A tela da estação exibirá em tempo real a **"DN" (Diferença de Nível)**, que corresponde à altura do objeto a partir da base medida
- Anote ou grave este valor

### Aplicações Práticas

- Medição de altura de postes de iluminação pública
- Determinação da altura de edificações
- Levantamento de torres de transmissão
- Medição de árvores em estudos ambientais
- Verificação de gabaritos em obras

> **Dica:** Para maior precisão, certifique-se de que a estação está perfeitamente nivelada e que a visada ao topo do objeto é feita no mesmo plano vertical da base.

## 3.2. Locação de Pontos (Calcular Ponto)

A função **"Calcular Ponto"** é usada para **locar** (ou piquetear) pontos em campo, ou seja, encontrar e marcar no terreno as coordenadas de um projeto previamente elaborado.

### Princípio de Funcionamento

O programa compara as coordenadas do ponto a ser locado (armazenadas na memória da estação) com a posição atual do prisma. A estação fornece orientações em tempo real sobre o ângulo, a distância e a diferença de cota necessários para posicionar o prisma exatamente no ponto projetado.

### Procedimento:

#### 1. Acessar o Programa:

- No menu **"Programas"**, selecione a função **"Calcular Ponto"**
- Certifique-se de que a estação já está devidamente configurada e orientada (conforme Aula 1)

#### 2. Selecionar o Ponto a Locar:

- Escolha o ponto que você deseja locar a partir da lista de pontos carregada na memória do equipamento (conforme Aula 2)
- O equipamento exibirá as coordenadas do ponto selecionado

#### 3. Orientar o Equipamento:

- O aparelho exibirá o **ângulo horizontal necessário** para encontrar a direção do ponto
- Gire o instrumento até que a diferença angular (**dHR**) seja zerada ou próxima de zero
- Instrua o auxiliar a posicionar o prisma na direção indicada

#### 4. Ajustar a Distância e a Cota:

- Com a direção alinhada, a tela indicará a **distância** que o prisma deve ser movido (para frente ou para trás) para chegar à posição correta
- O equipamento também mostrará o valor de **corte ou aterro** necessário para atingir a cota (elevação) exata do projeto
- Movimente o prisma conforme as indicações até que as diferenças sejam minimizadas

#### 5. Gravar o Ponto Locado:

- Após marcar o ponto no terreno (com estaca, piquete, etc.), você pode **medir e gravar** suas coordenadas para verificação posterior
- Isso permite comparar a posição real do ponto locado com a posição projetada

### Interpretação dos Valores na Tela

| Parâmetro | Significado | Ação |
|-----------|-------------|------|
| **dHR** | Diferença de ângulo horizontal | Gire a estação até zerar |
| **dHD** | Diferença de distância horizontal | Mova o prisma para frente (+) ou para trás (-) |
| **dV** | Diferença de cota (vertical) | Corte (-) ou aterro (+) necessário |

### Aplicações Práticas

- Locação de eixos de vias e estradas
- Piqueteamento de lotes em parcelamento do solo
- Marcação de pontos de fundação em obras
- Locação de redes de infraestrutura (água, esgoto, energia)
- Implantação de projetos paisagísticos

## Resumo das Funções

| Função | Menu | Aplicação | Resultado |
|--------|------|-----------|-----------|
| **REM** | Programas → REM | Medir a altura de objetos inacessíveis | Exibe a Diferença de Nível (DN) em tempo real |
| **Calcular Ponto** | Programas → Calcular Ponto | Encontrar e marcar pontos de projeto no terreno | Indica o ângulo, a distância e o corte/aterro para a locação |

## Exercício Prático

Para fixar o conteúdo desta aula, realize os seguintes exercícios:

### Exercício 1: Medição Remota (REM)

1. Escolha um poste de iluminação no campus
2. Configure a estação e acesse o programa REM
3. Meça a base do poste
4. Meça o topo do poste
5. Anote a altura obtida e compare com a altura nominal do poste (se disponível)

### Exercício 2: Locação de Pontos

1. Prepare um arquivo com 3 pontos fictícios a serem locados
2. Carregue estes pontos na estação
3. Configure a estação e a orientação
4. Utilize o programa "Calcular Ponto" para locar os 3 pontos
5. Marque os pontos no terreno com estacas
6. Meça as coordenadas reais dos pontos locados e compare com as coordenadas projetadas

## Vídeos Tutoriais

Para acompanhar visualmente estes procedimentos, assista aos vídeos:

- [ESTAÇÃO TOTAL GEODETIC GD2I-8 PROGRAMA REM: ALTURA REMOTA DA ELEVAÇÃO](https://www.youtube.com/watch?v=WnoZ7hxtQOE)
- [ESTAÇÃO TOTAL GD2I-8 PROGRAMA: CALC. PONTO (LOCAÇÃO DO PONTO)](https://www.youtube.com/watch?v=UYp1H-yHyEA)

---

**Aula anterior:** [Aula 2: Gerenciamento de Dados](aula-2-gerenciamento-dados.md)

**Próxima aula:** [Aula 4: Mudança de Estação](aula-4-mudanca-estacao.md)

**Voltar para:** [Índice do Módulo](README.md)
