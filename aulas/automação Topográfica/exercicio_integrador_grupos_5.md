# Exercício Integrador — Automação de Desenhos Técnicos Topográficos e Cartográficos

**Disciplina:** Projeto de Levantamento Topográfico  
**Curso:** Engenharia Cartográfica e de Agrimensura  
**Professor:** Prof. Dr. Erison Rosa de Oliveira Barros  
**Modalidade:** Trabalho em grupos de cinco alunos  
**Carga sugerida:** 18 a 24 horas de trabalho, distribuídas entre preparação, campo ou simulação, processamento, produção cartográfica e apresentação  
**Produto central:** fluxo reproduzível que transforma dados de levantamento em produtos técnicos documentados

---

## 1. Apresentação do desafio

Cada grupo deverá desenvolver um **Projeto de Levantamento Topográfico automatizado**, partindo de uma necessidade técnica e chegando a produtos verificáveis. O grupo poderá trabalhar com uma área real autorizada pelo professor ou com a base didática fornecida na pasta `dados_exercicio`.

O exercício não será avaliado apenas pelo desenho final. A avaliação considerará a coerência entre objetivo, planejamento, metodologia, dados, processamento, automação, controle de qualidade e documentação.

> **Problema profissional:** uma equipe recebeu a tarefa de produzir uma planta topográfica planialtimétrica, uma tabela de coordenadas, uma visualização geográfica e um relatório de validação. O prazo é curto, os dados foram produzidos por diferentes equipamentos e existem registros que precisam ser conferidos antes da representação.

A equipe deverá demonstrar que consegue transformar dados de campo em informação técnica sem perder o vínculo com o levantamento original.

---

## 2. Objetivos de aprendizagem

Ao final da atividade, o grupo deverá ser capaz de:

1. definir o objetivo e os requisitos de um levantamento topográfico;
2. reconhecer restrições de acesso, segurança, relevo, vegetação e visibilidade;
3. escolher uma metodologia compatível com finalidade, precisão, prazo e recursos;
4. organizar dados de pontos, linhas e atributos em estrutura tabular;
5. identificar campos ausentes, duplicidades, inconsistências numéricas e códigos inválidos;
6. registrar corretamente o sistema de referência, as unidades e as convenções angulares;
7. calcular distâncias, azimutes e outros elementos geométricos necessários;
8. gerar pontos, linhas, textos, layers e tabelas por regras explícitas;
9. integrar CAD, SIG e scripts Python em um fluxo coerente;
10. produzir uma planta, uma tabela, um arquivo geográfico e um relatório técnico;
11. aplicar controle de qualidade sobre os dados e os produtos;
12. documentar decisões, limitações, versões, erros e critérios de aceitação;
13. apresentar oralmente o processo, justificando as escolhas técnicas.

---

## 3. Organização dos grupos

Cada grupo será composto por **cinco alunos**. As funções abaixo organizam o trabalho, mas não eliminam a responsabilidade coletiva. Todos os integrantes deverão conhecer o fluxo completo e participar da revisão final.

| Função | Responsabilidades principais | Evidência individual sugerida |
|---|---|---|
| Coordenador de projeto | Controlar escopo, cronograma, reuniões, riscos e integração dos entregáveis. | Plano de trabalho e registro de decisões. |
| Responsável pelo campo e reconhecimento | Elaborar croqui, planejar ocupações, registrar condições de campo e controlar segurança. | Ficha de reconhecimento, croqui e diário de campo. |
| Responsável pelos dados e CRS | Organizar arquivos, conferir campos, documentar unidades e validar o sistema de referência. | Dicionário de dados e relatório de validação. |
| Responsável pela automação | Desenvolver ou adaptar rotinas AutoLISP, Python, QGIS Model Designer ou PyQGIS. | Código comentado, instruções e log de execução. |
| Responsável pela cartografia e QC | Configurar simbologia, planta, tabela, revisão geométrica e relatório final. | Checklist de controle e prancha revisada. |

As funções deverão ser registradas no relatório. Recomenda-se que os integrantes troquem de função durante a execução para evitar a concentração do conhecimento em uma única pessoa.

---

## 4. Cenário técnico do projeto

A área de estudo deverá representar um trecho de campus universitário, praça, via local, área institucional ou terreno destinado a uma intervenção de engenharia. O grupo deverá selecionar uma das finalidades abaixo ou propor outra, desde que aprovada pelo professor:

| Opção | Finalidade | Elementos mínimos a representar |
|---|---|---|
| A | Implantação de calçada acessível | Limites, meio-fio, postes, árvores, acessos, desníveis e obstáculos. |
| B | Estudo preliminar de drenagem | Pontos cotados, sarjetas, bocas de lobo, talvegues, grelhas e direção de escoamento. |
| C | Cadastro de área institucional | Edificações, muros, portões, árvores, postes, pavimentos e pontos de controle. |
| D | Pequeno projeto viário | Eixo, bordos, estacas, meio-fio, sinalização, drenagem e perfis. |
| E | Levantamento planialtimétrico didático | Rede de apoio, detalhes, pontos altimétricos, linhas de quebra e superfície. |

O grupo deverá escrever, em um parágrafo, **qual decisão técnica o produto pretende apoiar**. Uma planta sem finalidade definida não atende ao objetivo do exercício.

### 4.1 Requisitos mínimos do produto

O conjunto final deverá conter, no mínimo, os seguintes elementos:

- pontos de apoio ou pontos de controle identificados;
- pontos de detalhe com coordenadas planimétricas e, quando aplicável, altimétricas;
- linhas de quebra, limites ou feições lineares com ordem de vértices definida;
- códigos e descrições padronizados;
- sistema de referência e unidades documentados;
- planta técnica com escala, norte, legenda, identificação da área e quadro de coordenadas;
- arquivo geoespacial vetorial em GeoPackage ou formato equivalente;
- tabela de coordenadas em XLSX ou CSV validado;
- relatório de controle de qualidade;
- código ou modelo de automação executável por outro integrante;
- apresentação oral de 8 a 12 minutos.

---

## 5. Dados fornecidos e dados produzidos

O professor poderá fornecer os arquivos existentes em `dados_exercicio`, ou o grupo poderá produzir uma base própria de campo. A base didática possui dados intencionalmente preparados para que o grupo pratique validação. Os erros não deverão ser corrigidos silenciosamente: cada ocorrência deve aparecer no log e ser classificada como corrigida, rejeitada ou mantida com justificativa.

Para os dados simulados deste exercício, utilizar o CRS didático informado no arquivo de metadados. A adoção de um EPSG em uma área real depende da confirmação do referencial, da projeção, do fuso, da época e das especificações do levantamento. **Não se deve transferir automaticamente o CRS didático para outro projeto.**

A estrutura mínima recomendada para pontos é:

| Campo | Tipo esperado | Obrigatoriedade | Regra de aceitação |
|---|---|---|---|
| `ID` | Inteiro | Obrigatório | Único e não nulo. |
| `X` | Real | Obrigatório | Coordenada em unidade declarada. |
| `Y` | Real | Obrigatório | Coordenada em unidade declarada. |
| `Z` | Real | Conforme finalidade | Obrigatória quando houver produto altimétrico. |
| `CODIGO` | Texto curto | Obrigatório | Deve pertencer ao dicionário do projeto. |
| `DESCRICAO` | Texto | Obrigatório | Deve explicar a feição levantada. |
| `LINHA_ID` | Texto | Conforme feição | Define a conectividade de uma linha ou polígono. |
| `ORDEM` | Inteiro | Conforme feição | Define a sequência dos vértices. |
| `OBSERVACAO` | Texto | Recomendado | Registra condição ou exceção de campo. |

O grupo deverá criar um **dicionário de códigos**. Por exemplo, `PV` pode significar poste, `ED` edificação, `ARV` árvore, `MC` meio-fio, `BL` boca de lobo e `GCP` ponto de controle. Os códigos efetivamente utilizados devem ser justificados e não podem ser interpretados apenas pela aparência.

---

## 6. Etapa 1 — Definição do problema e do escopo

### Tarefa

Redigir o termo de abertura do projeto em uma página. O texto deverá informar quem solicita o levantamento, qual área será estudada, qual finalidade será atendida, qual precisão é necessária, quais produtos serão entregues e quais limitações existem.

### Perguntas obrigatórias

1. Qual é a finalidade técnica do levantamento?
2. Qual área ou trecho será abrangido?
3. Quais feições devem ser levantadas?
4. Qual é a precisão ou tolerância esperada?
5. Quais dimensões, cotas ou atributos serão entregues?
6. Qual método de levantamento será utilizado?
7. Quais equipamentos e softwares estão disponíveis?
8. Como será realizado o controle de qualidade?
9. Qual é o prazo do grupo?
10. Quais informações não poderão ser obtidas nesta atividade?

### Entregável da etapa

`01_planejamento/termo_abertura.md`

O documento deverá conter o objetivo geral, os objetivos específicos, o escopo incluído, o escopo não incluído, as premissas, as restrições, os produtos e os critérios de aceitação.

---

## 7. Etapa 2 — Reconhecimento da área

O reconhecimento deverá ser realizado antes da coleta. Quando houver atividade presencial, o grupo deverá obter autorização de acesso e seguir as orientações de segurança do local. Quando for utilizada a base didática, o reconhecimento deverá ser feito por imagens, mapas e croquis fornecidos pelo professor.

### 7.1 Reconhecimento de escritório

Consultar imagens, mapas, bases cadastrais, modelos de elevação e documentos disponíveis. Registrar possíveis obstáculos, acessos, edificações, vegetação, pavimentação, áreas de sombra GNSS e locais onde a estação total poderá ser instalada.

### 7.2 Reconhecimento de campo

Registrar acesso, circulação de pessoas e veículos, interferências, estabilidade do terreno, visibilidade entre estações, segurança dos equipamentos, possibilidade de implantação de marcos e condições de voo, quando houver drone.

### 7.3 Croqui obrigatório

O croqui deverá indicar a área, os pontos de apoio previstos, as feições principais, os obstáculos, o sentido de deslocamento da equipe e observações relevantes. O croqui não precisa ter escala cartográfica rigorosa, mas deve ser legível e coerente com a área.

### Entregáveis da etapa

| Arquivo | Conteúdo mínimo |
|---|---|
| `02_reconhecimento/ficha_reconhecimento.md` | Data, equipe, condições, acesso, obstáculos, riscos e decisões. |
| `02_reconhecimento/croqui_area.pdf` | Croqui de localização e pontos previstos. |
| `02_reconhecimento/matriz_riscos.md` | Risco, probabilidade, impacto, controle e responsável. |

---

## 8. Etapa 3 — Definição da metodologia

O grupo deverá comparar pelo menos duas alternativas metodológicas. Uma alternativa poderá utilizar estação total, outra GNSS, nível, drone ou base simulada. A escolha final deverá ser justificada por finalidade, precisão, relevo, acessibilidade, equipe, prazo e custo relativo.

| Critério | Pergunta orientadora | Decisão do grupo |
|---|---|---|
| Finalidade | O produto será usado para cadastro, obra, drenagem ou visualização? | Registrar justificativa. |
| Precisão | Qual tolerância planimétrica e altimétrica é aceitável? | Informar unidade e referência. |
| Relevo | Há desníveis, talvegues ou linhas de quebra importantes? | Definir estratégia altimétrica. |
| Visibilidade | Os pontos podem ser ocupados ou visados? | Definir posições e alternativas. |
| Equipamentos | Quais instrumentos estão disponíveis e verificados? | Registrar modelo e limitações. |
| Prazo | Quanto tempo existe para campo e processamento? | Apresentar cronograma. |
| Equipe | Como as cinco pessoas serão distribuídas? | Registrar funções. |
| Custo | Quais recursos têm maior impacto? | Fazer comparação qualitativa. |

### Entregável da etapa

`03_metodologia/plano_metodologico.md`, contendo método escolhido, métodos descartados, equipamentos, parâmetros, convenções, sequência de coleta e critérios de qualidade.

---

## 9. Etapa 4 — Planejamento da rede e dos pontos

O grupo deverá definir pontos de apoio, pontos de controle, pontos de detalhe, pontos de mudança, referências altimétricas, marcos e estações. Os pontos deverão ser distribuídos de forma a apoiar a representação e o controle, e não apenas concentrados em locais convenientes.

### Critérios de seleção

Os pontos devem ser estáveis, acessíveis, identificáveis, protegidos, reutilizáveis e distribuídos espacialmente. Para estação total, o grupo deverá considerar visibilidade e geometria da poligonal. Para GNSS, deverá avaliar obstruções e qualidade do rastreio. Para drone, deverá considerar distribuição e visibilidade dos pontos de controle no solo.

### Entregáveis da etapa

- `04_rede_pontos/plano_pontos.csv`;
- `04_rede_pontos/diagrama_rede.pdf`;
- `04_rede_pontos/convencoes_identificacao.md`;
- `04_rede_pontos/ficha_pontos_controle.md`.

A tabela deverá conter ao menos `ID_PONTO`, `TIPO`, `FINALIDADE`, `ESTABILIDADE`, `ACESSO`, `VISIBILIDADE`, `METODO` e `OBSERVACAO`.

---

## 10. Etapa 5 — Planejamento e execução da coleta

### 10.1 Checklist de equipamentos

O grupo deverá elaborar e preencher um checklist com estação total, GNSS, nível, tripé, bastão, prisma, mira, trena, coletor, baterias, memória, carregadores, marcos, estacas, tinta, prancheta, croqui e EPIs. Os equipamentos efetivamente utilizados devem ser registrados com modelo e número de identificação, quando disponível.

### 10.2 Registro de campo

Toda observação deverá receber identificação. O grupo deverá registrar data, hora, estação, operador, instrumento, altura do instrumento, altura do prisma ou antena, ponto ocupado, ponto visado, observação, condição ambiental e observações de qualidade.

### 10.3 Regras de segurança

Nenhuma coleta deverá ser realizada em via movimentada, área restrita, encosta instável, proximidade de rede elétrica ou espaço com risco não controlado sem autorização e procedimento específico. O voo de drone somente poderá ocorrer se houver habilitação, autorização, avaliação de risco e cumprimento das regras institucionais e aeronáuticas aplicáveis.

### Entregáveis da etapa

| Arquivo | Conteúdo mínimo |
|---|---|
| `05_campo/diario_campo.md` | Data, equipe, condições, decisões, ocorrências e encerramento. |
| `05_campo/caderneta_digital.csv` | Observações brutas, sem apagar registros. |
| `05_campo/backup_manifesto.md` | Nome, tamanho, data, origem e cópia de cada arquivo. |
| `05_campo/fotos_croquis/` | Registros autorizados e identificados. |

Quando for utilizada a base didática, o grupo deverá escrever uma nota explicando que a etapa de campo foi simulada e quais informações foram fornecidas pelo professor.

---

## 11. Etapa 6 — Organização dos dados

Os dados brutos deverão ser preservados em uma pasta somente leitura ou em um arquivo versionado que não seja sobrescrito. O grupo deverá criar uma cópia de trabalho e uma versão validada.

### Estrutura recomendada de diretórios

```text
projeto_grupoXX/
├── README.md
├── 01_planejamento/
├── 02_reconhecimento/
├── 03_metodologia/
├── 04_rede_pontos/
├── 05_campo/
│   ├── brutos/
│   └── fotos_croquis/
├── 06_dados_validados/
├── 07_processamento/
├── 08_automacao/
│   ├── autolisp/
│   ├── python/
│   └── qgis/
├── 09_produtos/
│   ├── cad/
│   ├── sig/
│   ├── tabelas/
│   └── relatorios/
├── 10_qa_qc/
└── 11_apresentacao/
```

Os nomes de arquivos deverão utilizar letras minúsculas, números, sublinhado ou hífen. O grupo não deverá usar nomes como `final_final2.dwg`, `pontos_novo.csv` ou `versao_certa.xlsx`.

### Entregável da etapa

`README.md`, contendo objetivo, responsáveis, requisitos, softwares, como executar o fluxo, onde estão os dados, quais produtos são gerados e qual versão foi considerada final.

---

## 12. Etapa 7 — Validação da estrutura e dos atributos

Antes de desenhar, o grupo deverá validar os registros. A validação deverá produzir um relatório, e não apenas uma mensagem na tela.

### Verificações obrigatórias

1. existência de cabeçalho;
2. presença dos campos obrigatórios;
3. quantidade de colunas por linha;
4. IDs vazios ou duplicados;
5. X, Y e Z com valores numéricos quando exigidos;
6. valores não finitos, como `NaN` ou infinito;
7. coordenadas repetidas;
8. códigos fora do dicionário;
9. ordem de vértices ausente quando houver linha;
10. registros fora da área esperada;
11. unidades declaradas e compatíveis;
12. CRS informado e registrado;
13. campos de descrição vazios;
14. caracteres incompatíveis com a exportação;
15. correspondência entre pontos e linhas.

### Classificação dos resultados

| Classe | Significado | Ação |
|---|---|---|
| Erro bloqueante | Impede o processamento seguro. | Corrigir na origem ou rejeitar o registro. |
| Alerta | Pode ser válido, mas requer revisão. | Conferir e justificar. |
| Informação | Registro útil para rastreabilidade. | Manter no log. |

### Entregáveis da etapa

- `06_dados_validados/pontos_validos.csv`;
- `06_dados_validados/pontos_rejeitados.csv`;
- `06_dados_validados/log_validacao.csv`;
- `06_dados_validados/dicionario_dados.md`;
- `06_dados_validados/metadados_crs.md`.

O log deverá informar linha de origem, campo, valor encontrado, regra, classificação, ação adotada e responsável pela decisão.

---

## 13. Etapa 8 — Processamento geométrico e referência espacial

O grupo deverá definir e documentar as convenções matemáticas e cartográficas utilizadas. O relatório deverá distinguir coordenadas planas, coordenadas geográficas, cotas e altitudes.

### 13.1 Transformação de coordenadas

Quando houver transformação, informar CRS de origem, CRS de destino, método ou biblioteca, ordem dos eixos, unidade de entrada, unidade de saída e data da execução. Não basta registrar somente o nome de um software.

### 13.2 Distância plana

Para dois pontos em sistema projetado, a distância horizontal poderá ser calculada por:

\[
d_{12}=\sqrt{(X_2-X_1)^2+(Y_2-Y_1)^2}
\]

O uso dessa fórmula pressupõe que X e Y estejam em unidade linear compatível e que a finalidade permita interpretar a distância no sistema adotado.

### 13.3 Azimute

O grupo deverá declarar a convenção. Uma possibilidade é contar o azimute a partir do Norte, no sentido horário, usando:

\[
Az_{12}=\operatorname{atan2}(X_2-X_1,\,Y_2-Y_1)
\]

Após converter para graus, normalizar o resultado para o intervalo de 0° a 360°. Se o projeto utilizar outra convenção, o relatório deverá apresentar a fórmula correspondente e um exemplo numérico.

### 13.4 Linhas e polígonos

Uma linha deverá ser criada apenas quando existir uma regra de conectividade, como `LINHA_ID` e `ORDEM`. A proximidade entre pontos não é justificativa suficiente para conectá-los. Para polígonos, o grupo deverá verificar fechamento e orientação conforme a finalidade.

### Entregáveis da etapa

- `07_processamento/memoria_calculos.md`;
- `07_processamento/coordenadas_processadas.csv`;
- `07_processamento/linhas_processadas.csv`;
- `07_processamento/transformacoes_crs.md`;
- `07_processamento/relatorio_geometrico.md`.

---

## 14. Etapa 9 — Automação em CAD e AutoLISP

O grupo deverá implementar pelo menos uma rotina de criação ou importação. A rotina poderá ser adaptada do material da aula, desde que o grupo compreenda e documente as alterações.

### Requisitos mínimos

A rotina deverá:

1. ler um arquivo ou receber registros de pontos;
2. criar ou verificar layers;
3. inserir pontos ou blocos;
4. inserir identificação, cota e descrição;
5. aplicar deslocamentos de texto documentados;
6. informar quantos registros foram processados;
7. informar quantos registros foram rejeitados;
8. preservar o arquivo original;
9. produzir um log ou mensagem de execução;
10. indicar as limitações conhecidas.

### Layers mínimos sugeridos

| Layer | Conteúdo |
|---|---|
| `TOPO_PONTOS` | Pontos ou símbolos principais. |
| `TOPO_ID` | Identificações. |
| `TOPO_COTAS` | Cotas ou altitudes. |
| `TOPO_DESC` | Descrições. |
| `TOPO_LINHAS` | Polilinhas ou feições lineares. |
| `TOPO_REVISAO` | Registros que exigem conferência. |

### Entregáveis da etapa

- `08_automacao/autolisp/topo_pontos.lsp`;
- `08_automacao/autolisp/README.md`;
- `09_produtos/cad/pontos_automacao.dxf` ou `DWG` equivalente;
- `09_produtos/cad/log_execucao_cad.txt`;
- captura ou PDF da planta gerada para revisão.

O `README.md` deverá explicar como carregar a rotina, quais parâmetros são solicitados, qual arquivo de entrada foi usado e como verificar o resultado.

---

## 15. Etapa 10 — Automação em Python

O grupo deverá criar um script Python que execute uma parte relevante do fluxo. O script deverá preferencialmente separar leitura, validação, processamento e exportação em funções distintas.

### Requisitos mínimos

O script deverá:

- receber o arquivo de entrada por argumento ou configuração clara;
- validar o cabeçalho;
- converter tipos com mensagens de erro compreensíveis;
- verificar IDs duplicados e coordenadas repetidas;
- calcular pelo menos uma grandeza geométrica;
- registrar erros em arquivo;
- gerar uma saída estruturada;
- evitar sobrescrever arquivos brutos;
- informar versão ou data da execução;
- incluir comentários sobre CRS e unidades.

### Estrutura sugerida

```text
08_automacao/python/
├── gerador_produtos.py
├── requirements.txt
├── README.md
└── saida_exemplo/
```

O grupo deverá demonstrar o script com a base correta e com pelo menos um arquivo contendo erro. A execução com erro deverá ser tratada de forma controlada, sem produzir uma planta aparentemente válida.

### Entregáveis da etapa

- `08_automacao/python/gerador_produtos.py`;
- `08_automacao/python/requirements.txt`;
- `08_automacao/python/README.md`;
- `09_produtos/tabelas/coordenadas.xlsx`;
- `09_produtos/sig/pontos.gpkg`;
- `09_produtos/sig/pontos.kml`, quando aplicável;
- `09_produtos/relatorios/log_execucao_python.txt`.

---

## 16. Etapa 11 — Automação e análise no QGIS

O grupo deverá realizar pelo menos três operações no QGIS. É possível utilizar expressões, processamento, Model Designer ou PyQGIS.

### Operações recomendadas

1. criar geometria a partir de X e Y;
2. definir ou conferir o CRS;
3. reprojetar uma camada para visualização geográfica;
4. calcular rótulos dinâmicos;
5. calcular distância, área ou perímetro;
6. filtrar registros por código;
7. exportar para GeoPackage;
8. exportar camada ou layout para DXF;
9. gerar mapa com legenda, escala e norte;
10. salvar o modelo ou registrar a sequência de algoritmos.

### Entregáveis da etapa

- `08_automacao/qgis/modelo_processamento.model3` ou roteiro equivalente;
- `08_automacao/qgis/expressoes_qgis.md`;
- `09_produtos/sig/projeto_qgis.qgz`;
- `09_produtos/sig/mapa_analitico.pdf`.

Se o grupo não utilizar o Model Designer, deverá apresentar capturas e um roteiro reexecutável com os nomes dos algoritmos, parâmetros e arquivos de entrada e saída.

---

## 17. Etapa 12 — Geração dos produtos técnicos

Todos os produtos deverão ser gerados a partir da mesma versão validada da base. Alterações manuais posteriores deverão ser registradas.

### 17.1 Planta topográfica

A planta deverá conter título, identificação da área, escala, norte, legenda, sistema de referência, unidades, data, responsáveis, quadro de coordenadas, convenções gráficas e indicação de limitações. Os textos deverão ser legíveis na escala de impressão escolhida.

### 17.2 Tabela de coordenadas

A tabela deverá incluir ID, X, Y, Z, código, descrição, camada ou feição, CRS e unidade. A quantidade de registros deverá ser comparada com a base validada e o relatório deverá explicar qualquer diferença.

### 17.3 Arquivo SIG

O GeoPackage ou formato equivalente deverá conter geometrias e atributos coerentes. O grupo deverá indicar o tipo de geometria, o CRS e a origem dos dados. Quando houver linhas, verificar a conectividade e a ordem dos vértices.

### 17.4 Visualização geográfica

O KML deverá ser gerado somente após a transformação adequada para coordenadas geográficas. O relatório deverá informar o CRS de origem e o CRS de saída. Um arquivo KML visualizado no globo não substitui o controle de qualidade da coordenada original.

### 17.5 Relatório técnico

O relatório deverá explicar objetivo, área, metodologia, equipamentos, dados, processamento, automação, controle de qualidade, resultados, limitações e conclusões.

### Entregáveis mínimos

| Produto | Nome sugerido |
|---|---|
| Planta | `09_produtos/cad/planta_topografica.pdf` |
| Arquivo CAD | `09_produtos/cad/planta_topografica.dxf` |
| Base SIG | `09_produtos/sig/base_topografica.gpkg` |
| Tabela | `09_produtos/tabelas/quadro_coordenadas.xlsx` |
| Visualização | `09_produtos/sig/visualizacao.kml` |
| Relatório | `09_produtos/relatorios/relatorio_tecnico.pdf` |
| Memorial ou nota metodológica | `09_produtos/relatorios/memorial_metodologico.md` |

---

## 18. Etapa 13 — Controle de qualidade e auditoria

O controle de qualidade deverá ser realizado por pelo menos dois integrantes que não tenham sido os únicos responsáveis pela geração do produto revisado. A revisão deverá combinar conferência numérica, visual e documental.

### 18.1 Controle de entrada

Verificar cabeçalho, quantidade de registros, campos obrigatórios, tipos, IDs, códigos, unidades, CRS e duplicidades.

### 18.2 Controle geométrico

Verificar extensão espacial, pontos fora da área, linhas sem vértices, polígonos abertos, feições cruzadas, coordenadas repetidas, cotas improváveis e distância entre pontos que deveriam coincidir.

### 18.3 Controle cartográfico

Verificar escala, norte, legenda, espessura de linhas, hierarquia visual, posição dos textos, quadro de coordenadas, carimbo, margens, sistema de referência e legibilidade em PDF.

### 18.4 Controle de consistência entre produtos

Comparar a quantidade de pontos, IDs, coordenadas, códigos e cotas entre CSV, GeoPackage, DXF, XLSX, KML e relatório. Qualquer diferença deverá ser explicada.

### 18.5 Controle de rastreabilidade

Registrar arquivo de entrada, versão do código, dependências, parâmetros, data, operador, quantidade de entradas, quantidade de saídas, erros e alertas.

### Checklist de aceitação

| Item | Sim/Não | Evidência | Observação |
|---|---|---|---|
| O objetivo do levantamento está claro? |  |  |  |
| O método foi justificado? |  |  |  |
| O reconhecimento está documentado? |  |  |  |
| Os dados brutos foram preservados? |  |  |  |
| O CRS e as unidades foram informados? |  |  |  |
| Os IDs são únicos? |  |  |  |
| Os campos obrigatórios foram validados? |  |  |  |
| As linhas possuem ordem e conectividade? |  |  |  |
| A planta possui escala, norte e legenda? |  |  |  |
| A tabela coincide com a base validada? |  |  |  |
| O código pode ser executado por outra pessoa? |  |  |  |
| O log registra erros e alertas? |  |  |  |
| Dois integrantes revisaram os produtos? |  |  |  |
| As limitações foram declaradas? |  |  |  |

### Entregáveis da etapa

- `10_qa_qc/checklist_qa_qc.md`;
- `10_qa_qc/relatorio_consistencia.csv`;
- `10_qa_qc/relatorio_revisao.md`;
- `10_qa_qc/registro_alteracoes.md`.

---

## 19. Etapa 14 — Documentação e reprodutibilidade

Uma pessoa que não participou da execução deverá conseguir entender o projeto e reproduzir pelo menos uma parte do processamento usando os arquivos entregues.

O `README.md` deverá responder às seguintes perguntas:

1. Qual é o objetivo do projeto?
2. Qual base foi utilizada?
3. Qual CRS e quais unidades foram adotados?
4. Qual ferramenta deve ser instalada?
5. Qual comando ou sequência de ações deve ser executado?
6. Quais arquivos são gerados?
7. Como interpretar o log?
8. Quais registros foram rejeitados?
9. Quais decisões dependem de revisão profissional?
10. Quais limitações impedem o uso do produto para outra finalidade?

O grupo deverá utilizar controle de versões ou, no mínimo, um registro de alterações com data, responsável, arquivo modificado e justificativa.

---

## 20. Estrutura do relatório final

O relatório deverá possuir as seções abaixo. O grupo poderá acrescentar seções, mas não deverá omitir os itens essenciais.

### 20.1 Identificação

Título, integrantes, turma, professor, data, área e finalidade.

### 20.2 Resumo executivo

Síntese do problema, método, produtos e principais resultados.

### 20.3 Objetivo e escopo

Objetivo geral, objetivos específicos, escopo incluído e escopo não incluído.

### 20.4 Caracterização da área

Localização, acesso, uso do solo, relevo, obstáculos e condições de coleta.

### 20.5 Planejamento e metodologia

Equipamentos, equipe, rede, observações, parâmetros, convenções e critérios de qualidade.

### 20.6 Estrutura e validação dos dados

Campos, tipos, códigos, unidades, CRS, erros encontrados, decisões e arquivos rejeitados.

### 20.7 Processamento e automação

Fluxo de execução, AutoLISP, Python, QGIS, fórmulas, transformações e parâmetros.

### 20.8 Produtos gerados

Planta, tabela, SIG, KML, memorial, logs e diferenças entre entradas e saídas.

### 20.9 Controle de qualidade

Checklist, conferência numérica, conferência visual, consistência e rastreabilidade.

### 20.10 Limitações e recomendações

Condições que impedem o uso para projeto executivo, cadastro legal, locação, monitoramento ou outra finalidade não prevista.

### 20.11 Conclusão

Resposta ao problema inicial e avaliação do valor da automação no fluxo.

### 20.12 Referências

Normas, manuais, documentações de software e arquivos consultados.

---

## 21. Critérios de avaliação

A atividade será avaliada em 100 pontos. O professor poderá ajustar a distribuição, desde que comunique a alteração antes da entrega.

| Critério | Pontos | Evidência esperada |
|---|---:|---|
| Problema, objetivo e escopo | 10 | Termo de abertura coerente com a finalidade. |
| Reconhecimento e segurança | 8 | Ficha, croqui, matriz de riscos e conduta adequada. |
| Metodologia e planejamento da rede | 12 | Comparação de métodos, plano de pontos e justificativas. |
| Estrutura dos dados e CRS | 12 | Dicionário, metadados, unidades e convenções. |
| Validação e tratamento de erros | 12 | Logs, registros rejeitados, alertas e decisões. |
| Processamento geométrico | 10 | Distâncias, azimutes, linhas, polígonos e transformações. |
| Automação CAD, Python ou QGIS | 15 | Código/modelo funcional, comentado e reexecutável. |
| Qualidade da planta e dos produtos | 10 | Planta legível, tabela consistente e arquivos válidos. |
| Relatório e rastreabilidade | 6 | Documentação completa, versão e limitações. |
| Apresentação oral e participação | 5 | Clareza, domínio do processo e divisão equilibrada. |
| **Total** | **100** |  |

A ausência de informação de CRS, unidade ou origem dos dados poderá limitar a nota máxima dos produtos, mesmo que a planta pareça visualmente correta.

---

## 22. Apresentação oral

A apresentação deverá durar entre 8 e 12 minutos. Todos os integrantes deverão participar. A sequência recomendada é:

1. problema e finalidade;
2. área e reconhecimento;
3. método e equipamentos;
4. estrutura e validação dos dados;
5. automação desenvolvida;
6. produtos gerados;
7. controle de qualidade;
8. limitações e conclusão.

A equipe deverá demonstrar pelo menos uma execução do script, rotina ou modelo. Também deverá mostrar um exemplo de erro encontrado e explicar como ele foi tratado.

---

## 23. Perguntas de defesa técnica

O professor poderá utilizar as perguntas abaixo durante a apresentação:

1. Por que o método escolhido é compatível com a finalidade?
2. Qual é a origem das coordenadas?
3. Qual é o CRS dos dados de entrada?
4. Por que as unidades são adequadas?
5. Como a rotina identifica um ID duplicado?
6. O que acontece quando a cota está vazia?
7. Como a conectividade das linhas foi definida?
8. Como o grupo verificou o fechamento de um polígono?
9. Qual é a diferença entre um alerta e um erro bloqueante?
10. Como o produto seria atualizado se cinco pontos fossem corrigidos?
11. Quais entidades foram geradas automaticamente?
12. O que ainda depende de revisão manual?
13. Qual limitação impede o uso do produto em uma obra real?
14. Como outra equipe executaria o fluxo?
15. Qual é a evidência de que os produtos são derivados da mesma base?

---

## 24. Cronograma sugerido

| Período | Atividade | Entrega parcial |
|---|---|---|
| Aula 1 | Formação do grupo, definição da finalidade e escopo. | Termo de abertura. |
| Aula 2 | Reconhecimento, riscos e escolha metodológica. | Ficha, croqui e metodologia. |
| Aula 3 | Rede de pontos e planejamento de coleta. | Plano de pontos. |
| Aula 4 | Coleta de campo ou preparação da base didática. | Dados brutos e diário. |
| Aula 5 | Estruturação e validação. | Base válida e log. |
| Aula 6 | Processamento geométrico e CRS. | Memória de cálculos. |
| Aula 7 | AutoLISP, Python e QGIS. | Código/modelo executável. |
| Aula 8 | Produtos e controle de qualidade. | Planta, tabela e relatório QC. |
| Aula 9 | Revisão cruzada e preparação da defesa. | Pacote final. |
| Aula 10 | Apresentações. | Defesa técnica. |

---

## 25. Formato de entrega

O grupo deverá entregar um arquivo `.zip` com a estrutura de diretórios definida na seção 11. O nome recomendado é:

```text
grupoXX_automacao_topografica_aaaa-mm-dd.zip
```

O pacote deverá conter arquivos abertos ou exportáveis, e não somente capturas de tela. O professor deverá conseguir localizar os dados, executar o código ou seguir o modelo, consultar os logs e abrir os produtos finais.

O grupo deverá indicar, no `README.md`, quais arquivos são originais, quais foram validados, quais foram gerados e quais foram revisados manualmente.

---

## 26. Resultado esperado

O resultado esperado não é apenas uma planta visualmente organizada. É um **fluxo técnico completo e justificável**:

```text
NECESSIDADE
    ↓
OBJETIVO E ESCOPO
    ↓
RECONHECIMENTO E RISCOS
    ↓
METODOLOGIA E REDE
    ↓
COLETA OU BASE DIDÁTICA
    ↓
DADOS BRUTOS PRESERVADOS
    ↓
VALIDAÇÃO E CRS
    ↓
PROCESSAMENTO GEOMÉTRICO
    ↓
AUTOMAÇÃO CAD / PYTHON / QGIS
    ↓
PLANTA + TABELA + SIG + RELATÓRIO
    ↓
QA/QC E RASTREABILIDADE
    ↓
DEFESA TÉCNICA
```

A automação deverá ser compreendida como parte do projeto de levantamento. Ela reduz tarefas repetitivas, melhora a padronização e facilita atualizações, mas não substitui a análise profissional, a conferência do dado original nem a responsabilidade técnica sobre o produto.

---

## 27. Materiais de apoio do projeto

- [Aula completa sobre Automatização de Desenhos Técnicos Topográficos e Cartográficos](aula_automatizacao_desenhos_topograficos.md)
- [Apresentação HTML completa com 31 slides](apresentacao_completa/index.html)
- [Pasta com a apresentação e ilustrações](apresentacao_completa/)
- [Página institucional do LABAT](https://erisonbarros.github.io/projeto_lev_topografico/sobre-labat/)

---

## Referências

[1]: https://www.ibge.gov.br/geociencias/metodos-e-outros-documentos-de-referencia/normas/16463-especificacao-e-normas-gerais-para-levantamentos-geodesicos-em-territorio-brasileiro.html "Especificação e normas gerais para levantamentos geodésicos em território brasileiro"

[2]: https://docs.qgis.org/latest/en/docs/user_manual/processing/modeler.html "QGIS Documentation — Graphical Modeler"

[3]: https://pyproj4.github.io/pyproj/stable/api/transformer.html "pyproj Transformer API"

[4]: https://www.ogc.org/standards/geopackage/ "OGC GeoPackage Standard"

[5]: https://docs.python.org/3/library/csv.html "Python csv module documentation"

[6]: https://help.autodesk.com/view/OARX/2025/ENU/ "Autodesk AutoCAD Developer Documentation"
