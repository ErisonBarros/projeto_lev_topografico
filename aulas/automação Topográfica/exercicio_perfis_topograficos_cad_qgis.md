# Exercício de Perfil Topográfico no CAD e no QGIS

## Estaqueamento de 20 em 20 metros, seções transversais a cada 500 metros e comparação de cotas com o PE3D

**Disciplina:** Projeto de Levantamento Topográfico  
**Curso:** Engenharia Cartográfica e de Agrimensura  
**Professor:** Prof. Dr. Erison Rosa de Oliveira Barros  
**Organização:** grupos de cinco alunos  
**Produto final:** perfil longitudinal produzido no CAD e no QGIS, perfis transversais em estações de 500 m, roteiro perimétrico e planilha de diferenças de cota

---

## 1. Situação-problema

Uma equipe de levantamento recebeu um conjunto de pontos de um eixo topográfico. O contratante necessita de um perfil longitudinal para avaliar o comportamento altimétrico do trecho e de perfis transversais para apoiar uma análise preliminar de implantação, drenagem ou terraplenagem.

Além das cotas fornecidas no eixo, existem pontos coletados ou extraídos de uma base de referência do **PE3D**. O grupo deverá comparar as cotas, identificar diferenças e documentar a origem dos dados.

O exercício deverá ser executado como um fluxo técnico completo. O grupo não deverá apenas desenhar uma linha. Deverá demonstrar como os pontos foram interpretados, como o estaqueamento foi obtido, como as cotas foram calculadas, como os perfis foram construídos e como os resultados foram controlados.

> **Pergunta central:** as cotas do eixo fornecido e as cotas coletadas ou extraídas do PE3D são compatíveis dentro da tolerância definida pelo grupo?

---

## 2. Arquivos do exercício

O arquivo original está em [`dados_exercicio/perfil/pontos.txt`](dados_exercicio/perfil/pontos.txt). Ele possui 166 linhas, sem cabeçalho, no formato:

```text
ID,X,Y,Z
```

O grupo deverá preservar esse arquivo como **dado bruto**. Não editar nem substituir o original.

A pasta também contém arquivos derivados e uma planilha de apoio em [`dados_exercicio/perfil/`](dados_exercicio/perfil/):

| Arquivo | Uso no exercício |
|---|---|
| `pontos_eixo_fornecidos.csv` | Pontos 1–87 com estação acumulada. |
| `pontos_coletados_pe3d.csv` | Pontos 88–166, pareamento espacial preliminar e diferenças de cota. |
| `estaqueamento_20m.csv` | Estações regulares de 20 em 20 m e cotas interpoladas. |
| `secoes_transversais_500m_10m.csv` | Alvos do eixo, 10 m à esquerda e 10 m à direita. |
| `roteiro_perimetrico_eixo.csv` | Azimute, distância, cotas, ΔZ e declividade entre pontos consecutivos. |
| `comparacao_cotas_fornecida_pe3d.csv` | Diferença preliminar entre as cotas dos dois blocos. |
| `planilha_exercicio_perfis_topograficos.xlsx` | Pasta de trabalho com todas as abas, fórmulas, filtros e gráfico. |

Os arquivos derivados são materiais de apoio. O grupo deverá reproduzir os cálculos principais no CAD, no QGIS ou em Python e conferir se os resultados são coerentes.

---

## 3. Interpretação inicial que deverá ser verificada

O arquivo apresenta duas estruturas aparentes:

| IDs | Interpretação de trabalho | Verificação obrigatória |
|---|---|---|
| 1–87 | Pontos sequenciais do eixo em coordenadas projetadas de grande magnitude. | Verificar sequência, unidade, CRS e sentido de progressão. |
| 88–166 | Pontos coletados ou extraídos do PE3D em coordenadas locais. | Verificar correspondência espacial, transformação e origem da cota. |

Para a preparação da planilha, o conjunto local foi relacionado ao eixo por uma **translação inicial** ancorada no ponto 1 e no ponto 151. Essa translação apresentou resíduo horizontal máximo aproximado de 0,00086 m no pareamento preliminar.

Essa informação não substitui a conferência dos alunos. O grupo deverá confirmar se a relação é realmente uma translação simples ou se exige rotação, escala, transformação de sistema de referência ou outro procedimento.

A cota fornecida no eixo é denominada `Z_fornecida`. A cota do conjunto coletado ou PE3D é denominada `Z_PE3D`. A diferença deverá ser calculada por:

\[
\Delta Z = Z_{PE3D} - Z_{fornecida}
\]

O grupo deverá informar se adotará essa convenção ou a convenção inversa. A escolha deverá ser aplicada de maneira consistente em todos os produtos.

---

## 4. Objetivos

O grupo deverá:

1. interpretar e documentar a estrutura do arquivo bruto;
2. separar eixo, pontos coletados ou PE3D e dados de apoio;
3. calcular a estação acumulada do eixo;
4. gerar estaqueamento regular de 20 em 20 metros;
5. construir o perfil longitudinal no CAD;
6. construir o perfil longitudinal no QGIS;
7. gerar seções transversais nas estações 0+000, 0+500, 1+000 e 1+500;
8. definir pontos de 10 m à esquerda, no eixo e 10 m à direita;
9. extrair as cotas transversais no PE3D;
10. criar um roteiro perimétrico ou longitudinal com azimute, distância e cota;
11. comparar a cota fornecida com a cota coletada ou extraída;
12. produzir relatório, planilha, arquivos CAD, camada SIG e perfis em PDF;
13. apresentar as limitações e a incerteza dos resultados.

---

## 5. Divisão das responsabilidades no grupo

Cada grupo terá cinco alunos. A distribuição recomendada é a seguinte:

| Integrante | Responsabilidade principal | Tarefas obrigatórias |
|---|---|---|
| Aluno 1 | Coordenação e planejamento | Escopo, cronograma, controle das decisões e integração do relatório. |
| Aluno 2 | Dados e referência espacial | Estrutura do CSV, CRS, unidades, transformação e metadados. |
| Aluno 3 | CAD | Perfil longitudinal, pontos de estação, layers, cotas e prancha. |
| Aluno 4 | QGIS e PE3D | Eixo, pontos a cada 20 m, extração de cotas transversais e mapa. |
| Aluno 5 | Controle e documentação | Roteiro perimétrico, comparação de cotas, QA/QC e revisão final. |

A responsabilidade é coletiva. Todos os integrantes deverão saber explicar o fluxo completo e participar da apresentação.

---

## 6. Etapa 1 — Preparação e controle do dado bruto

### 6.1 Criar a estrutura do projeto

Criar a seguinte estrutura de pastas:

```text
grupoXX_perfis/
├── 01_dados_brutos/
├── 02_dados_tratados/
├── 03_cad/
├── 04_qgis/
├── 05_pe3d/
├── 06_perfis/
├── 07_tabelas/
├── 08_qa_qc/
├── 09_relatorio/
└── 10_apresentacao/
```

O arquivo original deverá ser copiado para `01_dados_brutos/pontos.txt` e mantido sem alteração.

### 6.2 Criar o cabeçalho de trabalho

A cópia de trabalho deverá possuir o cabeçalho:

```text
ID,X,Y,Z
```

O grupo deverá registrar que essa inclusão foi feita apenas na cópia de trabalho. O arquivo bruto continua sem cabeçalho.

### 6.3 Conferências iniciais

Verificar o número de registros, o intervalo de IDs, a presença de valores vazios, a unidade presumida, a magnitude das coordenadas, a variação altimétrica e a existência de mais de um conjunto espacial.

### Entregáveis

- `01_dados_brutos/pontos.txt`;
- `02_dados_tratados/pontos_com_cabecalho.csv`;
- `02_dados_tratados/relatorio_estrutura.md`;
- `02_dados_tratados/metadados_crs_unidades.md`.

---

## 7. Etapa 2 — Construção do eixo e cálculo da estação

Considerar inicialmente os pontos 1 a 87 como sequência do eixo. No CAD e no QGIS, criar uma linha respeitando a ordem crescente dos IDs.

Para cada par consecutivo, calcular:

\[
D_{i,i+1}=\sqrt{(X_{i+1}-X_i)^2+(Y_{i+1}-Y_i)^2}
\]

A estação acumulada é:

\[
Est_1=0
\]

\[
Est_{i+1}=Est_i+D_{i,i+1}
\]

A extensão obtida a partir dos pontos 1 a 87 é aproximadamente **1.717,82 m**. O valor deverá ser recalculado pelo grupo e comparado com a planilha de apoio.

O grupo deverá registrar se o eixo é uma linha aberta ou se existe algum motivo técnico para fechá-lo. Neste exercício, o tratamento recomendado é uma **linha aberta**, porque o conjunto foi organizado como progressão de eixo.

### Entregáveis

- `02_dados_tratados/eixo_com_estacao.csv`;
- `03_cad/eixo.dxf` ou formato equivalente;
- `04_qgis/eixo.gpkg`;
- `09_relatorio/memoria_estacao.md`.

---

## 8. Etapa 3 — Geração do estaqueamento de 20 em 20 metros

Gerar pontos de estação nas progressivas:

```text
0+000,00; 0+020,00; 0+040,00; ...; 1+700,00; 1+717,82
```

As estações regulares deverão ser criadas por interpolação linear dentro do segmento do eixo que contém a progressiva desejada. Para uma estação `s` entre os pontos `A` e `B`, utilizar:

\[
t=\frac{s-Est_A}{Est_B-Est_A}
\]

\[
X_s=X_A+t(X_B-X_A)
\]

\[
Y_s=Y_A+t(Y_B-Y_A)
\]

\[
Z_s=Z_A+t(Z_B-Z_A)
\]

A cota interpolada não deve ser confundida com uma medição independente. Ela representa uma aproximação linear entre os pontos fornecidos.

### 8.1 No CAD

No CAD, criar um layer `PERFIL_ESTAQUEAMENTO`. Inserir um ponto ou bloco em cada estação. Criar rótulos com a identificação da estaca e a cota interpolada.

O grupo poderá utilizar `MEASURE`, `DIVIDE`, uma rotina AutoLISP ou um fluxo do Civil 3D. Se o método automático do CAD produzir apenas posições geométricas, as cotas deverão ser associadas a partir da tabela de estaqueamento.

### 8.2 No QGIS

No QGIS, criar o eixo como linha ordenada e utilizar uma ferramenta de pontos ao longo da geometria ou carregar `estaqueamento_20m.csv` como camada de pontos. Conferir o CRS e a coincidência das estações com o eixo.

### Entregáveis

- `03_cad/estaqueamento_20m.dxf`;
- `04_qgis/estaqueamento_20m.gpkg`;
- `07_tabelas/estaqueamento_20m.csv`;
- `09_relatorio/memoria_interpolacao.md`.

---

## 9. Etapa 4 — Perfil longitudinal no CAD

O perfil longitudinal deverá apresentar a estação no eixo horizontal e a cota no eixo vertical. O grupo deverá adotar escalas horizontal e vertical coerentes e informá-las no desenho.

### Requisitos do perfil CAD

O perfil deverá conter:

- título e identificação do grupo;
- eixo horizontal com estações;
- eixo vertical com cotas;
- indicação das estacas de 20 em 20 m;
- pontos cotados e linha do terreno;
- identificação de mudanças relevantes de declividade;
- escala horizontal e escala vertical;
- datum ou referência altimétrica informada;
- unidade em metros;
- legenda e observações;
- fonte dos dados;
- quadro com extensão, cota mínima e cota máxima.

### Procedimento recomendado

1. importar ou inserir o eixo e os pontos de estaqueamento;
2. organizar os layers `PERFIL_EIXO`, `PERFIL_PONTOS`, `PERFIL_COTAS`, `PERFIL_GRADE` e `PERFIL_ANOTACOES`;
3. criar a grade do perfil com as escalas declaradas;
4. plotar as cotas interpoladas;
5. ligar os pontos na ordem da estação;
6. conferir se a linha não foi construída com a ordem espacial errada;
7. inserir títulos, carimbo e fonte;
8. exportar para PDF e manter o arquivo editável.

No Civil 3D, o grupo poderá criar um alinhamento, gerar um perfil da superfície e utilizar uma vista de perfil. Nesse caso, deverá documentar a superfície, o estilo, o intervalo de amostragem e o método de criação.

---

## 10. Etapa 5 — Perfil longitudinal no QGIS

O perfil no QGIS deverá ser produzido a partir de uma camada de eixo e de uma camada de estaqueamento. Se houver uma superfície PE3D disponível, o grupo deverá produzir um segundo perfil com a cota amostrada na superfície e comparar os dois perfis.

### Procedimento recomendado

1. carregar o eixo e o estaqueamento como camadas vetoriais;
2. confirmar o CRS no painel de propriedades;
3. carregar a superfície PE3D conforme seu formato;
4. extrair ou amostrar a cota na posição dos pontos de estação;
5. associar a estação, a cota fornecida e a cota PE3D;
6. criar o gráfico de estação versus cota;
7. configurar rótulos, unidades, título e fonte;
8. exportar o gráfico ou o layout para PDF;
9. comparar o perfil interpolado com o perfil amostrado.

Se o PE3D for um raster, registrar resolução, extensão e método de amostragem. Se for nuvem de pontos, registrar formato, densidade, filtro, interpolação ou regra de seleção do ponto. Se não houver arquivo PE3D diretamente disponível, o grupo deverá usar os pontos do bloco 88–166 como conjunto de comparação e declarar essa limitação.

### Entregáveis

- `04_qgis/projeto_perfil.qgz`;
- `04_qgis/perfil_longitudinal_qgis.pdf`;
- `05_pe3d/metadados_fonte.md`;
- `05_pe3d/amostras_perfil_pe3d.csv`.

---

## 11. Etapa 6 — Seções transversais a cada 500 metros

Criar seções transversais nas estações:

| Estação | Estaca |
|---:|---:|
| 0,00 m | 0+000,00 |
| 500,00 m | 0+500,00 |
| 1.000,00 m | 1+000,00 |
| 1.500,00 m | 1+500,00 |

Para cada estação, criar três alvos:

| Offset | Interpretação |
|---:|---|
| -10,00 m | 10 m à esquerda do eixo, considerando o sentido de progressão. |
| 0,00 m | Ponto no eixo. |
| +10,00 m | 10 m à direita do eixo, considerando o sentido de progressão. |

O ponto transversal deverá ser calculado a partir do azimute do eixo na estação. Para a convenção adotada no exercício, com azimute contado a partir do Norte e no sentido horário:

\[
X_{offset}=X_s+offset\cdot\cos(Az_s)
\]

\[
Y_{offset}=Y_s-offset\cdot\sin(Az_s)
\]

O grupo deverá declarar a convenção de lado e conferir a orientação visualmente no QGIS.

### 11.1 Extração de cotas no PE3D

Para cada alvo, extrair a cota do PE3D. Não preencher a cota por estimativa visual sem registrar o método.

A planilha possui as colunas:

- `Estacao_m`;
- `Estaca`;
- `Offset_m`;
- `Lado`;
- `X_PE3D_alvo_m`;
- `Y_PE3D_alvo_m`;
- `Cota_eixo_m`;
- `Cota_PE3D_extraida_m`;
- `Diferenca_PE3D_eixo_m`.

A diferença da seção deverá ser calculada por:

\[
\Delta Z_{secao}=Z_{PE3D,offset}-Z_{eixo,interpolada}
\]

Se a camada PE3D for um raster, utilizar amostragem no ponto ou método equivalente. Se for nuvem de pontos, definir um raio de busca ou método de interpolação e registrar esse parâmetro. Se não for possível extrair a cota de um alvo, registrar `N/A` e explicar o motivo.

### 11.2 Perfil transversal no CAD

Criar quatro pranchas ou uma prancha com quatro janelas de perfil. O eixo horizontal deverá representar o offset de -10 a +10 m. O eixo vertical deverá representar cota.

Cada seção deverá conter título, estação, três pontos mínimos, cota, offset, escala e fonte PE3D. Caso o grupo obtenha pontos intermediários do PE3D, poderá utilizar mais pontos, desde que registre o intervalo e o método de amostragem.

### 11.3 Perfil transversal no QGIS

No QGIS, representar os alvos sobre a camada PE3D. Gerar uma tabela ou gráfico com offset no eixo horizontal e cota no eixo vertical. Comparar a forma da seção entre esquerda, eixo e direita.

### Entregáveis

- `03_cad/secoes_transversais_500m.dxf`;
- `04_qgis/secoes_transversais_500m.gpkg`;
- `04_qgis/perfis_transversais_qgis.pdf`;
- `05_pe3d/amostras_secoes_500m.csv`;
- planilha preenchida com as cotas extraídas e as diferenças.

---

## 12. Etapa 7 — Roteiro perimétrico ou longitudinal

O grupo deverá gerar um roteiro entre os pontos consecutivos do eixo, mantendo a ordem dos IDs. Para cada segmento, apresentar:

| Campo | Conteúdo |
|---|---|
| De | ID do ponto inicial. |
| Para | ID do ponto final. |
| Estação de | Progressiva do ponto inicial. |
| Azimute | Azimute do segmento em graus. |
| Distância | Distância horizontal em metros. |
| Cota de | Cota do ponto inicial. |
| Cota para | Cota do ponto final. |
| ΔZ | Cota final menos cota inicial. |
| Declividade | `ΔZ / distância × 100`. |

O azimute deverá ser calculado por uma convenção explicitada. Para o azimute a partir do Norte, sentido horário:

\[
Az=\operatorname{atan2}(\Delta X,\Delta Y)
\]

Converter para graus e normalizar para o intervalo de 0° a 360°.

O roteiro fornecido em `roteiro_perimetrico_eixo.csv` é uma referência preliminar. O grupo deverá conferir os valores no próprio procedimento e explicar se está tratando o conjunto como eixo aberto ou como perímetro fechado.

### Entregável

`07_tabelas/roteiro_perimetrico_eixo.xlsx` ou aba equivalente da planilha final, com azimute, distância, cotas e declividade.

---

## 13. Etapa 8 — Planilha de diferenças de cotas

A planilha final deverá conter, no mínimo, as seguintes abas:

| Aba | Conteúdo |
|---|---|
| `Visao_geral` | Objetivo, resumo da base, premissas e navegação. |
| `Dados_Eixo` | Pontos 1–87, coordenadas, cotas e estação. |
| `Pontos_PE3D` | Pontos 88–166, pareamento e resíduo horizontal. |
| `Roteiro_Perimetrico` | Azimute, distância, cotas, ΔZ e declividade. |
| `Estaqueamento_20m` | Estacas, X, Y, cota interpolada e azimute. |
| `Secoes_500m` | Offsets, coordenadas alvo, cota PE3D e diferença. |
| `Comparacao_Cotas` | ID coletado, ID fornecido, duas cotas e ΔZ. |

### 13.1 Diferença entre os pontos fornecidos e coletados

Para cada ponto pareado, apresentar:

\[
\Delta Z_i=Z_{coletado,i}-Z_{fornecido,i}
\]

Calcular também:

- média de `ΔZ`;
- desvio-padrão de `ΔZ`;
- maior valor absoluto de `ΔZ`;
- quantidade de pontos com `|ΔZ|` acima da tolerância definida;
- resíduo horizontal do pareamento;
- observação sobre cada ponto rejeitado ou pendente.

A planilha de apoio já contém uma comparação preliminar para os 79 pontos do bloco local. O grupo deverá verificar o pareamento no QGIS antes de concluir.

### 13.2 Diferença das seções transversais

Para cada offset, a coluna de diferença deverá utilizar fórmula equivalente a:

```text
Cota_PE3D_extraida_m − Cota_eixo_m
```

Quando a cota PE3D estiver vazia ou for `N/A`, a diferença deverá permanecer vazia. O grupo deverá diferenciar ausência de dado de valor zero.

---

## 14. Etapa 9 — Controle de qualidade

A revisão deverá ser realizada por pelo menos dois alunos que não tenham produzido isoladamente o arquivo revisado.

### 14.1 Controle geométrico

Verificar se os pontos do eixo estão na ordem correta, se o estaqueamento cresce de 20 em 20 m, se as seções estão nas estações previstas, se os offsets têm sinal correto e se as linhas não apresentam saltos ou inversões.

### 14.2 Controle altimétrico

Verificar as cotas mínimas e máximas, mudanças de declividade, valores vazios, diferenças entre perfis e coerência entre o gráfico, a tabela e o relatório.

### 14.3 Controle espacial

Verificar CRS, unidades, correspondência entre coordenadas locais e globais, resíduo horizontal, extensão da camada, alinhamento do eixo e posição das seções transversais.

### 14.4 Controle dos produtos

Comparar os IDs, estações e cotas entre CAD, QGIS, CSV, XLSX e PDF. O número de estações do perfil longitudinal deverá coincidir com a tabela. As quatro seções deverão estar identificadas corretamente.

### Entregável

`08_qa_qc/checklist_perfis.md`, contendo item, resultado, evidência, responsável e observação.

---

## 15. Produtos finais obrigatórios

O grupo deverá entregar:

1. perfil longitudinal em CAD;
2. perfil longitudinal em QGIS;
3. quatro perfis transversais nas estações de 500 m;
4. pontos de seção em -10, 0 e +10 m;
5. roteiro perimétrico ou longitudinal com azimute, distância e cota;
6. planilha de comparação de cotas;
7. arquivo CSV do estaqueamento de 20 em 20 m;
8. camada SIG do eixo e das seções;
9. arquivo CAD editável;
10. PDF das pranchas;
11. relatório técnico;
12. código, modelo ou procedimento utilizado para automatizar a geração;
13. checklist de controle de qualidade;
14. apresentação de 10 a 15 minutos.

---

## 16. Estrutura do relatório técnico

O relatório deverá conter:

### 16.1 Identificação e objetivo

Informar grupo, integrantes, finalidade, área ou eixo e produtos.

### 16.2 Origem e interpretação dos dados

Descrever o arquivo, a separação dos blocos 1–87 e 88–166, a ausência de cabeçalho e a hipótese de transformação.

### 16.3 Sistema de referência e unidades

Informar CRS, unidades, coordenadas projetadas ou locais, origem da informação e limitações.

### 16.4 Metodologia

Explicar cálculo de estação, interpolação, azimute, distância, offsets, extração de cotas PE3D e geração nos dois ambientes.

### 16.5 Resultados

Apresentar perfil longitudinal, perfis transversais, roteiro, planilha e estatísticas de diferença.

### 16.6 Controle de qualidade

Apresentar conferências, resíduos, registros pendentes, divergências entre produtos e revisão cruzada.

### 16.7 Limitações

Declarar limitações de metadados, resolução do PE3D, ausência de observações independentes, hipótese de transformação e interpolação linear.

### 16.8 Conclusão

Responder se as cotas são compatíveis com a tolerância adotada e se o produto atende à finalidade do exercício.

---

## 17. Critérios de avaliação

| Critério | Pontos |
|---|---:|
| Organização e preservação do dado bruto | 8 |
| Definição do eixo, estação e CRS | 12 |
| Estaqueamento de 20 em 20 m | 12 |
| Perfil longitudinal no CAD | 15 |
| Perfil longitudinal no QGIS | 15 |
| Seções de 500 m com offsets de ±10 m | 12 |
| Roteiro com azimute, distância e cotas | 10 |
| Planilha e diferenças de cota | 8 |
| Controle de qualidade e limitações | 5 |
| Relatório e apresentação | 3 |
| **Total** | **100** |

A ausência de CRS, unidade, fonte PE3D ou convenção angular impedirá a nota máxima, mesmo que o desenho esteja visualmente correto.

---

## 18. Perguntas para a defesa

1. Por que os pontos 1 a 87 foram interpretados como eixo?
2. Qual foi a extensão acumulada encontrada?
3. Como a estação 0+500 foi obtida?
4. A cota da estação regular foi medida ou interpolada?
5. Como o grupo definiu esquerda e direita nas seções?
6. Qual azimute foi usado para calcular os offsets?
7. Como a cota foi extraída do PE3D?
8. Qual é a resolução ou densidade do PE3D?
9. Como os pontos 88 a 166 foram pareados aos pontos fornecidos?
10. O que significa o resíduo horizontal?
11. Como foi calculada a diferença de cota?
12. Qual tolerância foi adotada e por quê?
13. Por que o roteiro é tratado como eixo aberto ou perímetro fechado?
14. Qual resultado muda se o CRS estiver incorreto?
15. Como o fluxo seria atualizado se novos pontos fossem acrescentados?

---

## 19. Referências e materiais de apoio

- [Aula sobre Automatização de Desenhos Técnicos Topográficos e Cartográficos](aula_automatizacao_desenhos_topograficos.md)
- [Apresentação HTML completa com 31 slides](apresentacao_completa/index.html)
- [Base e planilha de apoio para perfis](dados_exercicio/perfil/README.md)
- [Documentação do QGIS Model Designer][1]
- [Documentação do pyproj Transformer][2]
- [Documentação do módulo csv do Python][3]
- [Documentação do GeoPackage da OGC][4]

[1]: https://docs.qgis.org/latest/en/docs/user_manual/processing/modeler.html "QGIS Documentation — Graphical Modeler"
[2]: https://pyproj4.github.io/pyproj/stable/api/transformer.html "pyproj Transformer API"
[3]: https://docs.python.org/3/library/csv.html "Python csv module documentation"
[4]: https://www.ogc.org/standards/geopackage/ "OGC GeoPackage Standard"
