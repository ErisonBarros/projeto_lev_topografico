# Automatização de Desenhos Técnicos Topográficos e Cartográficos

## Material didático para a disciplina Projeto de Levantamento Topográfico

**Professor:** Prof. Dr. Erison Rosa de Oliveira Barros  
**Curso:** Engenharia Cartográfica e de Agrimensura  
**Áreas relacionadas:** Topografia, Geodésia, Cartografia, Geoprocessamento, Cadastro Territorial e Engenharia Civil  
**Modalidade:** aula teórico-prática com demonstração computacional  
**Duração recomendada:** 4 horas, organizada em dois blocos de 100 minutos, com intervalo de 20 minutos

> **Ideia central:** automatizar não é eliminar o raciocínio técnico. É transformar um procedimento repetitivo em um fluxo controlado, documentado, reproduzível e passível de auditoria.

---

## 1. Ementa

Automação aplicada à produção de desenhos técnicos topográficos e cartográficos. Estruturação de dados de campo. Modelagem de pontos, linhas, polígonos, atributos e referências espaciais. Integração entre arquivos CSV, CAD, SIG e planilhas. Uso de templates, layers, blocos, estilos, scripts e rotinas. Fundamentos de AutoLISP e Python para geração de pontos, textos, cotas, polilinhas, tabelas, mapas e documentos técnicos. Uso de expressões, Model Designer e PyQGIS no QGIS. Conversão entre DXF, KML/KMZ, GeoPackage, GeoJSON e outros formatos. Validação automática, controle de qualidade, logs, versionamento e rastreabilidade. Aplicação em levantamentos planialtimétricos, cadastro territorial, georreferenciamento, projetos de infraestrutura e documentação técnica.

A aula deve ser articulada às normas e especificações aplicáveis ao trabalho executado. Para levantamentos geodésicos vinculados ao Sistema Geodésico Brasileiro, o IBGE estabelece normas e especificações técnicas para requisitos mínimos de precisão e materialização das redes de referência [1]. A edição vigente da ABNT NBR 13133 deve ser consultada diretamente no catálogo da ABNT antes da especificação de um serviço [2].

---

## 2. Objetivos

### 2.1 Objetivo geral

Ensinar os estudantes a utilizar técnicas de automação, programação e processamento de dados geoespaciais para transformar dados de levantamentos topográficos e cartográficos em desenhos técnicos mais rápidos, padronizados, precisos, auditáveis e reproduzíveis.

### 2.2 Objetivos específicos

Ao final da aula, o estudante deverá ser capaz de:

1. Explicar o conceito de automação de desenhos técnicos.
2. Identificar tarefas repetitivas e de baixo valor agregado que podem ser automatizadas.
3. Relacionar dados topográficos estruturados com entidades CAD e camadas SIG.
4. Interpretar coordenadas X, Y e Z, atributos e sistemas de referência.
5. Importar, validar, transformar e exportar dados entre formatos usuais.
6. Criar pontos, textos, linhas, polilinhas, tabelas e documentos por meio de rotinas.
7. Reconhecer os papéis de scripts `.SCR`, AutoLISP, Python, QGIS e APIs.
8. Calcular distância, azimute, área e outras grandezas geométricas de forma automatizada.
9. Identificar erros de dados antes da geração da planta.
10. Documentar um fluxo de trabalho reproduzível, com entradas, saídas, parâmetros e logs.
11. Avaliar os limites da automação e os pontos que exigem decisão e responsabilidade profissional.

---

## 3. Competências e resultados de aprendizagem

| Competência | Evidência esperada ao final da aula |
|---|---|
| Modelagem de dados | O estudante descreve campos, tipos, unidades, CRS e regras de validação de um arquivo de pontos. |
| Integração tecnológica | O estudante escolhe entre CAD, SIG, Python, AutoLISP e planilha de acordo com o problema. |
| Geometria aplicada | O estudante calcula distância, azimute e área, explicitando convenções e unidades. |
| Automação | O estudante desenvolve ou adapta uma rotina para gerar entidades técnicas a partir de dados estruturados. |
| Controle de qualidade | O estudante identifica coordenadas inválidas, duplicidades, geometrias abertas ou inconsistências de atributos. |
| Documentação técnica | O estudante organiza arquivos de entrada, código, resultados, relatório e log em uma estrutura rastreável. |
| Responsabilidade profissional | O estudante reconhece que uma rotina não valida, por si só, a adequação do levantamento ao objetivo do projeto. |

---

## 4. Conteúdo programático

### 4.1 - Do dado de campo ao produto técnico

A cadeia de produção é apresentada como:

```text
Necessidade do cliente
        ↓
Objetivo e especificação
        ↓
Reconhecimento e planejamento
        ↓
Levantamento de campo
        ↓
Dados brutos
        ↓
Dados estruturados e validação
        ↓
Processamento geométrico e geodésico
        ↓
Automação CAD/SIG
        ↓
Planta, mapa, tabela e memorial
        ↓
Controle de qualidade e documentação
```

### 4.2 - Conceitos fundamentais

Automação, CAD, SIG, BIM, geoprocessamento, dados vetoriais e raster, geometria, atributos, topologia, coordenadas, datum, projeção, unidades, templates, layers, blocos, estilos, scripts, APIs e rotinas.

### 4.3 - Automação no AutoCAD

Scripts `.SCR`, arquivos `.DWT`, layers, estilos, blocos, atributos, cotas, configuração de folha, plotagem, extração de dados, Dynamic Blocks, AutoLISP e integração com APIs. A documentação da Autodesk organiza materiais de desenvolvimento, AutoLISP/DCL, referência e guias de personalização do AutoCAD [3].

### 4.4 - AutoLISP aplicado à Topografia

Variáveis, listas, funções, entrada de dados, leitura de arquivos, seleção e criação de entidades, manipulação de coordenadas, textos, pontos, linhas, polilinhas, layers, tabelas e cálculos geométricos.

### 4.5 - Python aplicado à automação geoespacial

Leitura de CSV, validação, processamento tabular, geometria, transformação de CRS, geração de DXF, KML/KMZ, GeoPackage, GeoJSON, Excel e documentos.

### 4.6 - QGIS e PyQGIS

Expressões, calculadora de campos, simbologia, Model Designer, processamento, exportação CAD e automação. O Model Designer permite encadear operações em um modelo executável como um único algoritmo, com entradas documentadas e possibilidade de exportação para script Python [4].

### 4.7 - Controle de qualidade e reprodutibilidade

Regras de validação, tolerâncias, checagem de unidades e CRS, detecção de inconsistências, logs, versionamento, backups, testes e rastreabilidade.

---

## 5. Plano de aula

| Tempo | Etapa | Estratégia | Produto da etapa |
|---:|---|---|---|
| 0–15 min | Abertura | Problematização: “Você desenharia manualmente 5.000 pontos?” | Expectativas e conhecimentos prévios |
| 15–35 min | Conceitos | Exposição dialogada sobre automação, dados e desenho técnico | Mapa conceitual |
| 35–55 min | Fluxo | Análise do fluxo campo → dados → processamento → produto | Diagrama do projeto |
| 55–80 min | CAD e AutoLISP | Demonstração de layers, pontos, textos e rotina simples | Primeiro script AutoLISP |
| 80–100 min | Discussão | Comparação entre desenho manual e automatizado | Critérios de escolha |
| 100–120 min | Intervalo | — | — |
| 120–145 min | Python | Leitura, validação e cálculo com `pandas` e biblioteca padrão | Tabela validada |
| 145–170 min | Geração | Demonstração CSV → DXF/KML/XLSX/DOCX | Produtos digitais |
| 170–190 min | QGIS | Expressões, Model Designer e integração com CAD | Modelo de processamento |
| 190–210 min | Qualidade | Casos de erro e validação automática | Checklist de QA/QC |
| 210–230 min | Exercício | Execução em duplas | Entrega parcial |
| 230–240 min | Fechamento | Síntese, discussão e desafio final | Plano do projeto prático |

---

## 6. Conceitos fundamentais

### 6.1 O que é automação?

Automação é o uso de regras, ferramentas ou programas para executar, controlar ou repetir uma sequência de operações com pouca intervenção manual. Em Topografia, a automação começa pela transformação de observações em **dados estruturados**, pois uma rotina somente pode operar de forma confiável quando conhece os campos, tipos, unidades, ordem e significado dos dados.

Automatizar um desenho não significa clicar mais rapidamente. Significa definir um procedimento que possa ser executado novamente sobre outro conjunto de dados, produzindo resultados equivalentes sob as mesmas regras.

### 6.2 Automação de desenhos técnicos

É a geração ou atualização de entidades gráficas e informações associadas a partir de dados e regras previamente definidos. Exemplos incluem a inserção de 1.000 pontos com identificação e cota, a geração de uma tabela de coordenadas, a aplicação de layers por código e a exportação padronizada para PDF.

A automação deve preservar a distinção entre três níveis:

| Nível | Característica | Exemplo |
|---|---|---|
| Manual | Cada operação é executada e conferida individualmente pelo operador. | Digitar coordenadas e desenhar cada linha no CAD. |
| Semiautomatizado | Uma parte é gerada por ferramenta, mas depende de decisões e ajustes manuais. | Importar pontos e ajustar textos, símbolos e linhas. |
| Automatizado | Entradas, regras, processamento, saídas e validações são definidos em uma rotina. | Ler CSV, validar, gerar DXF, KML, planilha, memorial e log. |

Nenhum nível é universalmente superior. A escolha depende do objetivo, da qualidade dos dados, da escala, da precisão, do prazo, da criticidade e do grau de padronização requerido.

### 6.3 CAD, SIG, BIM e geoprocessamento

**CAD** é utilizado para construir e editar desenhos técnicos com foco em entidades geométricas, layers, estilos, blocos, cotas e folhas. **SIG** organiza dados geográficos relacionando geometria, atributos, sistema de referência e operações espaciais. **BIM** integra objetos de construção, propriedades, relações e informações ao longo do ciclo de vida da obra. **Geoprocessamento** reúne métodos e técnicas para adquirir, organizar, transformar, analisar e representar informação geográfica.

Em um projeto topográfico, os papéis podem ser combinados: o SIG valida e analisa; o Python processa e integra; o CAD finaliza a documentação técnica; e o BIM recebe informações compatíveis com objetos de projeto.

### 6.4 Dados vetoriais, raster, geometria e atributos

Dados **vetoriais** representam entidades como pontos, linhas e polígonos. Dados **raster** representam uma matriz de células, adequada a imagens, modelos digitais e superfícies. A **geometria** descreve a posição e a forma. Os **atributos** descrevem o significado da entidade, como código, descrição, ordem, material ou data de coleta.

A topologia descreve relações espaciais, como conectividade, adjacência e contenção. Uma poligonal visualmente fechada pode não estar topologicamente fechada se o primeiro e o último vértices não forem coincidentes segundo a tolerância adotada.

### 6.5 Coordenadas, unidades e referência espacial

Uma coordenada só é tecnicamente interpretável quando se conhecem pelo menos o sistema de referência, a projeção, as unidades, a ordem dos eixos e a natureza da altura. No Brasil, deve-se indicar o referencial aplicável, a projeção cartográfica e o sistema de altitudes adotado no projeto.

Um valor como `289543.125, 9102345.521` pode ser plausível em uma projeção UTM, mas não é possível inferir o CRS apenas pelos números. O sistema de referência deve ser informado como metadado ou parâmetro do processamento. A biblioteca `pyproj` oferece transformações entre sistemas definidos e alerta para a questão da ordem dos eixos; o parâmetro `always_xy=True` pode ser adotado quando o fluxo exige a convenção X, Y [5].

### 6.6 Templates, layers, blocos e estilos

Um **template** define padrões iniciais do desenho, como unidades, layers, estilos de texto, estilos de cota, folhas e configurações de impressão. **Layers** organizam entidades segundo função, tema, cor, tipo de linha e estado de impressão. **Blocos** representam símbolos reutilizáveis. **Atributos** acrescentam informação editável a blocos. **Estilos** controlam aparência e comportamento gráfico.

Uma regra simples de projeto é separar dados por tema, e não apenas por cor. Por exemplo: `TOPO_PONTOS`, `TOPO_ID`, `TOPO_COTAS`, `TOPO_DESCRICAO`, `TOPO_LINHAS` e `TOPO_QUADRO`.

### 6.7 Scripts, rotinas e APIs

Um script é uma sequência de comandos ou instruções. Uma rotina é um programa organizado para resolver uma tarefa ou fluxo. Uma API é uma interface que permite que um programa utilize funções de outro programa ou serviço.

A automação deve ser pensada como um **contrato de dados**:

| Elemento do contrato | Pergunta de controle |
|---|---|
| Campos | Quais colunas são obrigatórias? |
| Tipos | ID é inteiro? X, Y e Z são numéricos? |
| Unidades | Coordenadas estão em metro? Cota está em metro? |
| CRS | Qual EPSG ou definição completa deve ser usada? |
| Codificação | O arquivo está em UTF-8? |
| Delimitador | A separação é por vírgula, ponto e vírgula ou tabulação? |
| Regras | Códigos permitidos e limites plausíveis foram definidos? |
| Saídas | Quais arquivos serão criados e com quais nomes? |

---

## 7. Arquivo de entrada: `PONTOS.csv`

O arquivo didático utilizado na demonstração possui o seguinte esquema:

```text
ID,X,Y,Z,CODIGO,DESCRICAO
1,289543.125,9102345.521,24.32,PV,POSTE
2,289550.328,9102352.781,24.87,ED,EDIFICACAO
3,289565.721,9102360.115,25.13,PV,POSTE
```

A primeira linha é o cabeçalho. Cada linha seguinte representa um ponto. O campo `ID` identifica o registro. `X`, `Y` e `Z` armazenam coordenadas. `CODIGO` pode ser usado para escolher layer ou símbolo. `DESCRICAO` será utilizada no texto e na documentação.

O formato CSV é simples, mas não é completamente uniforme entre aplicações. Delimitadores, aspas, codificação e convenções decimais variam. O módulo `csv` da biblioteca padrão do Python disponibiliza `reader`, `writer`, `DictReader` e `DictWriter`, mas os valores devem ser convertidos e validados pela aplicação [6].

### Regras mínimas para uma entrada confiável

1. Utilizar nomes de campos estáveis e sem ambiguidades.
2. Registrar o delimitador e a codificação.
3. Não misturar unidades no mesmo campo.
4. Não usar vírgula decimal em um arquivo delimitado por vírgula sem uma regra explícita.
5. Não inserir símbolos, graus ou unidades dentro dos campos numéricos.
6. Informar o CRS em arquivo de metadados, no nome do projeto ou como parâmetro.
7. Preservar o arquivo bruto e trabalhar sobre uma cópia validada.
8. Criar um relatório dos registros aprovados, rejeitados e corrigidos.

---

## 8. Arquitetura de um fluxo automatizado

```text
LEVANTAMENTO DE CAMPO
       ↓
GNSS / ESTAÇÃO TOTAL / NÍVEL / DRONE
       ↓
DADOS BRUTOS
       ↓
CSV / TXT / RINEX / DXF / LAS / SHP / GPKG
       ↓
ORGANIZAÇÃO E VALIDAÇÃO
       ↓
PYTHON / QGIS / PLANILHA / CIVIL 3D
       ↓
PROCESSAMENTO GEOMÉTRICO E GEODÉSICO
       ↓
AUTOMAÇÃO
       ↓
AUTOLISP / PYTHON / SCRIPTS / APIs / MODELOS QGIS
       ↓
DESENHO TÉCNICO
       ↓
PLANTA / PERFIL / SEÇÃO / MAPA / MODELO
       ↓
DOCUMENTAÇÃO
       ↓
TABELA / MEMORIAL / RELATÓRIO / LOG
       ↓
CONTROLE DE QUALIDADE E ENTREGA
```

### Explicação das etapas

**Levantamento de campo.** O método de observação deve ser escolhido com base no objetivo, precisão, acessibilidade, relevo, equipamentos e prazo. O código não corrige uma observação inadequada.

**Dados brutos.** São os arquivos originais produzidos pelo equipamento ou software. Devem ser preservados, identificados e submetidos a backup.

**Organização e validação.** Nesta etapa são conferidos cabeçalhos, tipos, unidades, duplicidades, valores ausentes, limites e CRS. A validação deve ocorrer antes da criação de entidades gráficas.

**Processamento.** Inclui conversão de unidades, transformação de coordenadas, cálculo de grandezas, ajustamento quando aplicável, seleção de pontos e criação de geometrias.

**Automação.** Regras são implementadas em scripts, rotinas, modelos ou APIs. O código deve informar erros de forma compreensível e produzir logs.

**Desenho técnico.** Entidades são organizadas em layers, estilos, blocos, folhas e escalas coerentes com o produto final.

**Documentação.** Tabelas, memoriais, relatórios e metadados devem ser gerados a partir da mesma base processada para reduzir divergências.

**Controle e entrega.** O produto deve ser verificado visualmente e numericamente. A entrega deve conter arquivos editáveis, arquivos de intercâmbio, documentação, versão do código e registro dos parâmetros.

---

## 9. Tecnologias e aplicações

| Tecnologia | Aplicação principal | Quando utilizar |
|---|---|---|
| AutoCAD | Desenho técnico e documentação CAD | Quando o produto exige entidades, layers, folhas e plotagem CAD. |
| Civil 3D | Superfícies, alinhamentos, perfis e infraestrutura | Quando o projeto demanda objetos e operações de engenharia civil. |
| AutoLISP | Rotinas dentro do AutoCAD | Quando a automação precisa operar diretamente sobre o ambiente CAD. |
| Scripts `.SCR` | Sequências de comandos | Quando há comandos lineares, simples e previsíveis. |
| Python | Integração, validação e processamento | Quando há muitos arquivos, regras, cálculos ou formatos diferentes. |
| QGIS | Análise, edição, simbologia e mapas | Quando a dimensão espacial e os atributos são centrais. |
| PyQGIS | Automação no QGIS | Quando se deseja executar algoritmos e organizar projetos por código. |
| Excel/XLSX | Tabelas, conferências e entrega tabular | Quando usuários precisam revisar ou consumir dados em planilha. |
| DXF | Intercâmbio CAD | Quando é necessário trocar entidades com diferentes programas. |
| KML/KMZ | Visualização em globos e aplicações compatíveis | Quando a finalidade é visualização geográfica e comunicação. |
| GeoPackage | Armazenamento vetorial, raster e tabular em um contêiner | Quando se deseja um formato aberto, portátil e organizado. |
| GeoJSON | Intercâmbio vetorial na web | Quando a integração com aplicações web é prioritária. |
| LAS/LAZ | Nuvens de pontos | Quando se processam dados LiDAR ou fotogramétricos. |

O GeoPackage é um formato aberto e baseado em SQLite para armazenar feições vetoriais, matrizes de tiles, rasters e tabelas não espaciais segundo regras de interoperabilidade [7]. O GeoPandas utiliza GDAL/OGR por meio de engines como Pyogrio ou Fiona para ler e gravar diversos formatos vetoriais, incluindo Shapefile, GeoJSON e GeoPackage [8].

---

## 10. Automação no AutoCAD

### 10.1 Mecanismos

| Mecanismo | O que faz | Exemplo topográfico | Limitação ou cuidado |
|---|---|---|---|
| `.SCR` | Executa comandos em sequência | Criar layers e importar uma sequência de pontos | Sensível à ordem dos comandos e às respostas esperadas. |
| AutoLISP `.LSP` | Executa lógica, cálculos e criação de entidades | Ler CSV, inserir pontos e textos, calcular azimute | Exige conhecimento da linguagem e do ambiente CAD. |
| `.DWT` | Guarda configurações iniciais | Template com unidades, layers, estilos e folhas | Deve ser versionado e distribuído com o projeto. |
| Layers | Organiza entidades | Separar pontos, cotas, descrições e linhas | Layers mal definidos dificultam QA/QC e plotagem. |
| Blocks | Reutiliza símbolos | Poste, árvore, PV, marco, tampa ou equipamento | O bloco deve ter escala, ponto de inserção e atributos definidos. |
| Attributes | Guarda dados em blocos | Código, identificação, cota e descrição | Atributos precisam de convenções de tag. |
| Estilos | Controla aparência | Texto, cota, tipo de linha e impressão | A aparência não substitui o dado geométrico. |
| Page Setup e plotagem | Padroniza a entrega | Folha A1/A3, escala, CTB e PDF | Conferir margens, carimbo, escala e legibilidade. |
| Data Extraction | Extrai dados CAD | Quadro de coordenadas a partir de blocos | A extração depende de entidades e atributos consistentes. |
| Civil 3D | Modela superfícies e objetos | Superfície, perfil, corredor e rede | Requer modelagem adequada e controle de estilos. |
| API | Integra aplicações | Gerar arquivos e atualizar bases | Exige governança, versionamento e tratamento de erros. |

### 10.2 Quando usar cada abordagem

Use `.SCR` para tarefas lineares e curtas. Use AutoLISP quando a lógica precisa consultar objetos, calcular valores ou criar entidades dentro do AutoCAD. Use Python quando o fluxo atravessa vários formatos, possui regras de validação, gera relatórios ou precisa operar fora do CAD. Use QGIS quando a análise espacial, a tabela de atributos e a transformação de CRS forem centrais.

---

## 11. AutoLISP aplicado à Topografia

### 11.1 Conceitos iniciais

AutoLISP é uma linguagem de extensão do AutoCAD baseada em listas. Uma variável é criada com `setq`. Uma lista é delimitada por parênteses. Uma função pode receber argumentos e retornar um valor. O prefixo `c:` transforma uma função em comando digitável na linha de comando do AutoCAD.

### 11.2 Exemplo simples: inserir um ponto e anotações

```lisp
(defun c:PTEXT (/ p id z desc)
  (setq p (getpoint "\nClique no ponto: "))
  (setq id (getstring T "\nIdentificação: "))
  (setq z (getreal "\nCota: "))
  (setq desc (getstring T "\nDescrição: "))
  (entmake (list '(0 . "POINT") (cons 8 "TOPO_PONTOS") (cons 10 p)))
  (entmake (list '(0 . "TEXT") (cons 8 "TOPO_ID") (cons 10 p)
                (cons 40 1.0) (cons 1 id)))
  (entmake (list '(0 . "TEXT") (cons 8 "TOPO_COTAS")
                (cons 10 (list (+ (car p) 1.0) (cadr p) (caddr p)))
                (cons 40 1.0) (cons 1 (rtos z 2 2))))
  (entmake (list '(0 . "TEXT") (cons 8 "TOPO_DESC")
                (cons 10 (list (+ (car p) 1.0) (- (cadr p) 1.0) (caddr p)))
                (cons 40 1.0) (cons 1 desc)))
  (princ)
)
```

A rotina pressupõe que os layers existam. Em uma rotina de produção, os layers devem ser criados ou conferidos antes da inserção.

### 11.3 Explicação linha por linha

| Linha ou trecho | Função didática |
|---|---|
| `(defun c:PTEXT (/ p id z desc)` | Define o comando `PTEXT` e declara variáveis locais. |
| `(setq p (getpoint ...))` | Solicita ao usuário uma posição e armazena uma lista X, Y, Z. |
| `(setq id (getstring T ...))` | Solicita a identificação como texto. O `T` permite espaços. |
| `(setq z (getreal ...))` | Solicita um número real para a cota. |
| `(setq desc (getstring T ...))` | Solicita a descrição do ponto. |
| `(entmake (list '(0 . "POINT") ...))` | Cria uma entidade POINT com layer e coordenada. |
| `(cons 10 p)` | Associa a coordenada ao código DXF 10. |
| `(cons 8 "TOPO_PONTOS")` | Coloca a entidade no layer de pontos. |
| `'(0 . "TEXT")` | Informa que a entidade a ser criada é um texto. |
| `(cons 40 1.0)` | Define a altura do texto em unidades do desenho. |
| `(cons 1 id)` | Define o conteúdo textual. |
| `(car p)`, `(cadr p)`, `(caddr p)` | Recuperam X, Y e Z da lista de coordenadas. |
| `(rtos z 2 2)` | Converte a cota para texto decimal com duas casas. |
| `(princ)` | Encerra silenciosamente o comando. |

### 11.4 Estrutura de uma rotina de produção

Uma rotina profissional deve separar funções de leitura, validação, criação de layers, criação de entidades, cálculos e registro de mensagens. Também deve preservar configurações do desenho, restaurar variáveis do AutoCAD quando ocorrer um erro e informar ao operador quantos registros foram lidos, aceitos e rejeitados.

O arquivo de apoio `TOPO_PONTOS.lsp`, entregue junto com esta aula, apresenta uma versão didática que:

1. solicita um CSV;
2. lê o cabeçalho e as linhas;
3. cria layers temáticos;
4. insere pontos com X, Y e Z;
5. insere ID, cota e descrição;
6. conta registros processados;
7. ignora linhas incompletas;
8. restaura a configuração básica ao final.

> **Limite importante:** a rotina didática conecta os pontos apenas para ilustrar a estrutura do código. Em um projeto real, pontos de detalhe não devem ser conectados automaticamente sem um campo de ordem, código de linha ou regra geométrica explicitamente definida.

---

## 12. Python aplicado à automação

### 12.1 Bibliotecas e papéis

| Biblioteca | Papel na aula |
|---|---|
| `csv` | Leitura e escrita básica de arquivos tabulares. |
| `pandas` | Validação, seleção, cálculo e exportação de tabelas. |
| `numpy` | Operações numéricas vetorizadas. |
| `geopandas` | Dados tabulares associados a geometrias. |
| `shapely` | Pontos, linhas, polígonos e operações geométricas. |
| `pyproj` | Transformação entre CRS e operações baseadas em PROJ. |
| `matplotlib` | Gráficos e inspeção visual de dados. |
| `openpyxl` | Leitura e escrita de planilhas Excel. |
| `ezdxf` | Criação, leitura e alteração de arquivos DXF. |
| `simplekml` | Geração de arquivos KML/KMZ. |
| `rasterio` | Leitura e escrita de dados raster. |
| `laspy` | Leitura e escrita de nuvens LAS/LAZ. |
| `python-docx` | Geração de documentos DOCX. |

### 12.2 Fragmento inicial: leitura e conversão

```python
import csv

with open("PONTOS.csv", newline="", encoding="utf-8") as arquivo:
    leitor = csv.DictReader(arquivo)
    for registro in leitor:
        x = float(registro["X"])
        y = float(registro["Y"])
        z = float(registro["Z"])
        print(registro["ID"], x, y, z)
```

| Linha | Explicação |
|---|---|
| `import csv` | Importa o módulo padrão de leitura e escrita CSV. |
| `open(..., newline="", encoding="utf-8")` | Abre o arquivo sem alterar quebras de linha e explicita a codificação. |
| `csv.DictReader(arquivo)` | Converte cada linha em um dicionário cujas chaves vêm do cabeçalho. |
| `for registro in leitor` | Percorre os registros um a um. |
| `float(registro["X"])` | Converte a string do campo X para número real. |
| `print(...)` | Exibe os valores para verificação inicial. |

A conversão não é validação. Um valor pode ser numérico e ainda assim estar em unidade errada, fora da área de interesse ou associado ao CRS incorreto.

### 12.3 Cálculo de distância e azimute

Para pontos planimétricos consecutivos, com azimute contado a partir do Norte no sentido horário:

```python
import math

def distancia_azimute(p1, p2):
    dx = p2[0] - p1[0]
    dy = p2[1] - p1[1]
    distancia = math.hypot(dx, dy)
    azimute = math.degrees(math.atan2(dx, dy)) % 360.0
    return distancia, azimute
```

A função `hypot` calcula a distância euclidiana no plano. A função `atan2(dx, dy)` foi organizada como X sobre Y para representar o azimute topográfico medido desde o Norte. Se o projeto adotar outro eixo, convenção ou referencial, a fórmula deve ser explicitamente ajustada e documentada.

### 12.4 Transformação de coordenadas

```python
from pyproj import Transformer

transformador = Transformer.from_crs(
    "EPSG:31985", "EPSG:4326", always_xy=True
)
longitude, latitude = transformador.transform(x, y)
```

A origem `EPSG:31985` é apenas um exemplo didático. O CRS real deve ser fornecido pelo projeto. Não se deve escolher um EPSG apenas porque os números “parecem UTM”.

### 12.5 Fluxos de conversão

| Entrada | Processamento | Saída | Cuidados |
|---|---|---|---|
| CSV | validação e criação de entidades | DXF | Unidades, layers e ordem de linhas. |
| CSV | transformação de CRS | KML | KML exige longitude e latitude em WGS84. |
| Shapefile | leitura via GeoPandas | DXF | Campos, geometria e unidade do desenho. |
| GeoPackage | seleção de camada | DXF ou GeoJSON | Nome da camada e CRS. |
| Pontos | ordenação e regra de fechamento | polígono | Não usar ordem arbitrária de pontos de detalhe. |
| Coordenadas | formatação e cálculo | memorial | Conferir fechamento, área e convenções. |
| Coordenadas | tipos numéricos e estilos | XLSX | Preservar precisão e metadados. |

---

## 13. QGIS na automação

### 13.1 Operações essenciais

No QGIS, a automação pode ser feita com calculadora de campos, processamento em lote, Model Designer, expressões, PyQGIS e exportação controlada para formatos CAD e SIG.

### 13.2 Expressões didáticas

Para uma camada de pontos:

```text
concat('P-', to_string("ID"))
```

Cria um rótulo como `P-1`.

```text
round("Z", 2)
```

Arredonda o atributo de cota para duas casas decimais.

```text
concat("CODIGO", ' - ', "DESCRICAO")
```

Combina código e descrição em um único rótulo.

```text
x($geometry)
```

Obtém a abscissa X da geometria do ponto.

```text
y($geometry)
```

Obtém a ordenada Y da geometria do ponto.

Para uma camada de polígonos:

```text
round($area, 2)
```

Calcula e arredonda a área conforme o CRS e as unidades da camada.

```text
round($perimeter, 2)
```

Calcula e arredonda o perímetro.

Para transformar uma geometria, o exemplo conceitual é:

```text
transform($geometry, 'EPSG:31985', 'EPSG:4326')
```

O código EPSG deve ser substituído pelo CRS efetivamente utilizado. Antes de exportar, conferir se o processamento requer coordenadas geográficas ou projetadas.

### 13.3 Model Designer

Um modelo pode receber uma camada de pontos, calcular campos, filtrar registros, criar geometrias, reprojetar, exportar e carregar o resultado. A principal vantagem didática é tornar visível o encadeamento das operações e permitir sua repetição com novos arquivos.

Exemplo de modelo:

```text
Camada CSV
    ↓
Verificar campos obrigatórios
    ↓
Criar geometria a partir de X e Y
    ↓
Definir CRS
    ↓
Calcular rótulo e cota
    ↓
Selecionar códigos válidos
    ↓
Exportar GeoPackage e DXF
    ↓
Gerar relatório de validação
```

---

## 14. Exemplo integrado do projeto

### 14.1 Entrada

```text
ID,X,Y,Z,CODIGO,DESCRICAO
1,289543.125,9102345.521,24.32,PV,POSTE
2,289550.328,9102352.781,24.87,ED,EDIFICACAO
3,289565.721,9102360.115,25.13,PV,POSTE
```

### 14.2 Regras de simbologia

| Código | Descrição | Layer | Representação didática |
|---|---|---|---|
| `PV` | Poste | `TOPO_POSTE` | Ponto ou bloco de poste. |
| `ED` | Edificação | `TOPO_EDIFICACAO` | Ponto de referência ou polígono levantado. |
| vazio | Não identificado | `TOPO_REVISAR` | Registro destacado para conferência. |

### 14.3 Produtos esperados

1. Pontos CAD com X, Y e Z.
2. Textos de ID, cota e descrição.
3. Layers criados conforme regras.
4. Blocos para códigos que possuam biblioteca de símbolos.
5. Polilinhas somente quando existir uma regra de conectividade.
6. Tabela de coordenadas em XLSX.
7. Planta topográfica em DXF e PDF após conferência.
8. Arquivo KML com coordenadas transformadas para WGS84.
9. Memorial ou relatório DOCX com parâmetros e resumo.
10. Relatório de validação e log de execução.

### 14.4 Sequência de execução

```text
PONTOS.csv
    ↓
Detectar delimitador e codificação
    ↓
Validar campos, tipos, duplicidades e limites
    ↓
Registrar erros e separar registros rejeitados
    ↓
Aplicar regras de código e layer
    ↓
Gerar pontos e textos no DXF
    ↓
Transformar X/Y para longitude/latitude
    ↓
Gerar KML
    ↓
Gerar XLSX
    ↓
Gerar DOCX
    ↓
Revisar visualmente e numericamente
```

O script `gerador_planta.py` acompanha este material. Ele é uma base didática e deve ser adaptado ao template, ao CRS, à convenção de códigos, à escala e ao nível de precisão do projeto real.

---

## 15. Controle de qualidade automatizado

### 15.1 Testes mínimos

| Verificação | Regra sugerida | Ação em caso de falha |
|---|---|---|
| Campos obrigatórios | `ID`, `X`, `Y`, `Z`, `CODIGO`, `DESCRICAO` presentes | Interromper processamento. |
| Valores ausentes | Nenhum campo numérico essencial vazio | Rejeitar registro e registrar linha. |
| Tipos | X, Y e Z convertíveis para número | Rejeitar registro inválido. |
| IDs duplicados | ID único no arquivo | Emitir erro ou solicitar regra de atualização. |
| Coordenadas duplicadas | X/Y repetidos segundo tolerância | Investigar ponto repetido ou ocupação distinta. |
| Faixa plausível | Valores compatíveis com a área e unidade | Emitir alerta, não corrigir automaticamente sem regra. |
| Código | Código pertence ao dicionário do projeto | Enviar para `TOPO_REVISAR`. |
| CRS | CRS declarado e compatível com a área | Interromper exportação geográfica. |
| Unidade | Metro, grau ou outra unidade explicitada | Corrigir somente com parâmetro documentado. |
| Polígono | Primeiro e último vértice fechados | Fechar apenas se a regra do projeto autorizar. |
| Linhas cruzadas | Interseções não previstas detectadas | Revisar ordem ou código dos vértices. |
| Área | Comparação com faixa ou cálculo independente | Investigar discrepâncias. |
| Distância | Segmentos anormalmente curtos ou longos | Conferir ponto, unidade e conectividade. |
| Azimute | Convenção e intervalo entre 0° e 360° | Recalcular e conferir orientação. |
| Layers | Entidades nos layers definidos | Corrigir ou rejeitar saída. |
| Escala | Texto, símbolo e cota legíveis na folha | Revisar estilos e viewport. |

### 15.2 Erros grosseiros e erros sistemáticos

A automação pode identificar padrões, mas não substitui a análise profissional. Um ponto com X e Y trocados pode ser detectado por faixa ou distância, mas a correção exige consulta ao dado original. Uma transformação de CRS aplicada de forma errada pode produzir uma saída visualmente organizada e tecnicamente inválida.

> **Automatizar não significa apenas produzir mais rápido; significa reduzir erros, tornar o processo auditável e permitir a reprodução do resultado.**

### 15.3 Checklist antes da entrega

- O objetivo do levantamento está registrado?
- O CRS, a projeção, as unidades e a natureza da altitude estão informados?
- O arquivo bruto foi preservado?
- O arquivo de entrada foi validado?
- Os registros rejeitados estão documentados?
- Os cálculos foram testados com valores independentes?
- As entidades estão nos layers corretos?
- A planta foi conferida em escala e no modelo?
- Tabela, planta e memorial foram gerados da mesma versão da base?
- O resultado foi aberto em software compatível?
- O código e os parâmetros foram arquivados?
- A responsabilidade técnica e as exigências normativas foram consideradas?

---

## 16. Comparação de produtividade

A estimativa abaixo é **didática**, não uma promessa de produtividade. Ela supõe que o arquivo esteja razoavelmente estruturado e que o template já tenha sido preparado.

| Critério | Processo manual para 100 pontos | Processo automatizado para 100 pontos |
|---|---|---|
| Preparação | Digitação, cópia e conferência repetidas | Definição do contrato de dados e configuração inicial |
| Inserção | Cerca de 100 operações ou mais | Uma execução da rotina após validação |
| Textos | Inserção e ajuste individual | Criação por regra e layer |
| Tabela | Montagem e atualização manual | Exportação direta da base processada |
| Tempo didático | Aproximadamente 3–6 horas, dependendo da complexidade | Aproximadamente 30–90 min de preparação e poucos minutos de execução |
| Erro de transcrição | Elevado quando há digitação repetitiva | Reduzido, desde que a entrada e a rotina estejam corretas |
| Reprodutibilidade | Baixa | Alta, se versão, parâmetros e entradas forem preservados |
| Padronização | Depende do operador | Definida no template e no código |
| Manutenção | Alterações manuais em vários lugares | Reprocessamento a partir da nova entrada |

O ganho não vem apenas do tempo de execução. O principal ganho ocorre quando o mesmo fluxo é repetido, atualizado ou auditado.

---

## 17. Roteiro dos slides — 31 slides

A apresentação pode ser usada diretamente em sala. Cada slide contém mensagem principal, elementos visuais e orientação para fala ou demonstração.

### Slide 1 — Título

**Na tela:** Automatização de Desenhos Técnicos Topográficos e Cartográficos.  
**Fala:** Apresente a aula como a integração entre levantamento, dados, programação, CAD, SIG e documentação.  
**Visual:** Fluxo curto `Campo → Dados → Código → Planta`.

### Slide 2 — A pergunta-problema

**Na tela:** “Você faria manualmente o desenho de 5.000 pontos?”  
**Fala:** O problema não é apenas velocidade. É consistência, atualização, rastreabilidade e redução de erros repetitivos.  
**Interação:** Peça aos alunos uma estimativa de tempo.

### Slide 3 — Objetivos de aprendizagem

**Na tela:** Dados estruturados, automação, CAD, SIG, Python, AutoLISP e qualidade.  
**Fala:** Explique que a meta é compreender e construir um fluxo, não decorar comandos.

### Slide 4 — Onde o tempo é perdido

**Na tela:** Inserção de pontos, textos, layers, tabelas e conferências repetidas.  
**Fala:** Diferencie tarefa repetitiva de decisão técnica. A primeira pode ser automatizada; a segunda deve ser justificada.

### Slide 5 — O que é automação?

**Na tela:** Entradas + regras + processamento + saídas + validação.  
**Fala:** Uma rotina deve ser executável novamente e produzir registro do que fez.

### Slide 6 — Evolução do desenho

**Na tela:** Manual × semiautomatizado × automatizado.  
**Fala:** Mostre que automação não significa ausência de revisão humana.

### Slide 7 — Automação no projeto topográfico

**Na tela:** Planejar → reconhecer → medir → processar → analisar → representar → documentar.  
**Fala:** A automação pode atuar depois do campo, mas o planejamento de dados deve começar antes.

### Slide 8 — O dado topográfico

**Na tela:** ID, X, Y, Z, código e descrição.  
**Fala:** Mostre que uma linha da tabela é uma entidade com geometria, atributos e significado.

### Slide 9 — Coordenadas e CRS

**Na tela:** X, Y, Z, unidades, projeção, datum e ordem dos eixos.  
**Fala:** Um número sem referência espacial não é uma coordenada tecnicamente completa.

### Slide 10 — CSV como contrato de dados

**Na tela:** Cabeçalho, delimitador, decimal, codificação e regras.  
**Demonstração:** Abra o `PONTOS.csv` e provoque um erro de campo vazio.

### Slide 11 — Arquitetura do fluxo

**Na tela:** Campo → bruto → validação → processamento → automação → produtos.  
**Fala:** Explique as entradas e saídas de cada etapa.

### Slide 12 — CAD, SIG e BIM

**Na tela:** CAD = desenho; SIG = informação espacial; BIM = objetos e ciclo de vida.  
**Fala:** Mostre por que um mesmo dado pode ser usado em ambientes diferentes.

### Slide 13 — Escolha da ferramenta

**Na tela:** `.SCR`, AutoLISP, Python, QGIS e Civil 3D.  
**Fala:** A ferramenta deve ser escolhida pelo problema, não pela popularidade.

### Slide 14 — AutoCAD automatizado

**Na tela:** Template, layers, blocos, atributos, estilos, plotagem e extração.  
**Fala:** O template é parte da automação e não apenas uma preferência gráfica.

### Slide 15 — Scripts `.SCR`

**Na tela:** Sequência de comandos simples.  
**Fala:** Explique quando um script linear é suficiente e quando ele se torna frágil.

### Slide 16 — Primeira rotina AutoLISP

**Na tela:** `getpoint`, `getreal`, `entmake`, `rtos`.  
**Demonstração:** Execute `PTEXT` com um ponto e três anotações.

### Slide 17 — AutoLISP: listas e entidades

**Na tela:** Lista de coordenadas e pares DXF.  
**Fala:** Relacione `(cons 10 p)` à coordenada e `(cons 8 layer)` ao layer.

### Slide 18 — Ler um CSV no CAD

**Na tela:** Abrir → cabeçalho → linha → campos → ponto → texto.  
**Demonstração:** Execute `TOPO_PONTOS` no arquivo de exemplo.

### Slide 19 — Python e dados tabulares

**Na tela:** `csv`, `pandas`, tipos e validação.  
**Fala:** Reforce que leitura não é validação.

### Slide 20 — Distância e azimute

**Na tela:** `d = √(ΔX² + ΔY²)` e `Az = atan2(ΔX, ΔY)`.  
**Fala:** Declare a convenção de azimute e mostre o intervalo de 0° a 360°.

### Slide 21 — QGIS e expressões

**Na tela:** rótulo, cota, X, Y, área e perímetro.  
**Demonstração:** Calcule `concat('P-', to_string("ID"))`.

### Slide 22 — Model Designer

**Na tela:** Camada → geometria → cálculo → filtro → exportação.  
**Fala:** Um modelo transforma um procedimento visual em um algoritmo repetível.

### Slide 23 — Geração de pontos CAD

**Na tela:** Ponto, layer, ID, cota e descrição.  
**Demonstração:** Mostre o DXF gerado e a organização por layers.

### Slide 24 — Geração de linhas e polilinhas

**Na tela:** Ordem de vértices e regra de conectividade.  
**Fala:** Não conectar pontos apenas por proximidade ou pela ordem do arquivo sem justificativa.

### Slide 25 — Tabela de coordenadas

**Na tela:** ID, X, Y, Z, código, descrição, observação.  
**Fala:** A tabela deve vir da base processada, não ser redigitada a partir da planta.

### Slide 26 — DXF, KML e XLSX

**Na tela:** Produto CAD, produto de visualização e produto tabular.  
**Fala:** Cada formato possui finalidade, limitações e exigências de CRS diferentes.

### Slide 27 — Memorial e relatório

**Na tela:** Objetivo, método, CRS, equipamentos, resultados, limitações e anexos.  
**Fala:** Documentação é parte do produto, não uma etapa decorativa.

### Slide 28 — Controle de qualidade

**Na tela:** Duplicidades, ausências, códigos, CRS, unidades, áreas e linhas cruzadas.  
**Demonstração:** Insira um erro no CSV e mostre a mensagem do validador.

### Slide 29 — Manual × automatizado

**Na tela:** 100 pontos, tempo, operações, erro, padronização e reprodutibilidade.  
**Fala:** O ganho se amplia quando o projeto precisa ser atualizado ou repetido.

### Slide 30 — Exercício prático

**Na tela:** Validar, importar, simbolizar, calcular, exportar e documentar.  
**Fala:** Organize a turma em duplas e defina os produtos mínimos.

### Slide 31 — Desafio final e síntese

**Na tela:** `5.000 pontos → dados estruturados → processamento → desenho → tabela → mapa → documentação`.  
**Mensagem final:** “O profissional do futuro não será aquele que desenha mais rápido, mas aquele que sabe transformar dados em informação por meio de processos automatizados, confiáveis e reproduzíveis.”

---

## 18. Metodologia didática: conceito → demonstração → código → execução → resultado → exercício

### Conceito

Defina o problema e mostre sua relação com a prática profissional. Exemplo: inserir manualmente 5.000 pontos é uma tarefa repetitiva, mas decidir quais pontos representam uma divisa exige interpretação do levantamento e do projeto.

### Demonstração

Use o arquivo `PONTOS.csv`. Mostre o dado em uma planilha, em um editor de texto, no QGIS e no CAD. O objetivo é evidenciar que o mesmo registro pode assumir representações diferentes.

### Código

Comece com a rotina `PTEXT`, que solicita um ponto e cria anotações. Depois apresente a rotina `TOPO_PONTOS`, que lê vários registros. Em seguida, apresente o gerador Python para produzir múltiplos formatos.

### Execução

Execute primeiro um conjunto pequeno. Verifique a mensagem de processamento, os layers, o número de registros e a existência dos arquivos de saída.

### Resultado

Abra o DXF, a planilha, o KML e o documento. Compare os produtos e verifique se todos derivam dos mesmos valores.

### Exercício

Altere deliberadamente um registro: retire a cota, duplique o ID ou troque um código. Observe se o sistema identifica o problema antes de gerar a planta.

---

## 19. Exercícios

### Exercício 1 — Diagnóstico de uma base

Considere os registros:

```text
ID,X,Y,Z,CODIGO,DESCRICAO
1,289543.125,9102345.521,24.32,PV,POSTE
2,289550.328,9102352.781,,ED,EDIFICACAO
2,289550.328,9102352.781,24.87,ED,EDIFICACAO
4,289565.721,9102360.115,25.13,XX,
```

Identifique os problemas, proponha regras de validação e indique quais registros podem seguir para a geração preliminar.

### Exercício 2 — Expressões QGIS

Para uma camada de pontos com os campos `ID`, `Z`, `CODIGO` e `DESCRICAO`, crie expressões para:

1. Produzir o rótulo `P-<ID>`.
2. Produzir o texto `CODIGO - DESCRICAO`.
3. Arredondar a cota para duas casas.
4. Obter X e Y da geometria.
5. Destacar registros cujo código não seja `PV` nem `ED`.

### Exercício 3 — AutoLISP `TOPO_PONTOS`

Desenvolva ou adapte a rotina para:

1. Solicitar um arquivo CSV.
2. Ler os pontos.
3. Criar layers temáticos.
4. Inserir ponto, ID, cota e descrição.
5. Informar quantos registros foram processados.
6. Ignorar linhas incompletas com mensagem de alerta.
7. Gerar uma tabela simples ou uma lista de coordenadas.

### Exercício 4 — Gerador automático de planta

A partir de `pontos.csv`, gerar:

```text
planta.dxf
pontos.kml
coordenadas.xlsx
memorial.docx
relatorio_validacao.txt
```

O grupo deve entregar também o código, o CRS adotado, o log e uma descrição das limitações.

### Exercício 5 — Conectividade e polígono

Receba um arquivo de vértices de uma poligonal com campos `ORDEM`, `X`, `Y` e `Z`. Gere uma polilinha somente depois de ordenar por `ORDEM`. Verifique fechamento, distância de cada segmento e área pelo método do cadarço.

---

## 20. Projeto prático da disciplina

### Título

**Automatização da geração de uma planta topográfica a partir de um arquivo CSV.**

### Problema

Uma equipe recebeu dados de pontos de um levantamento e precisa gerar uma planta preliminar, uma tabela de coordenadas, um arquivo de visualização geográfica e um memorial técnico. A equipe não deve redigitar os valores em cada produto.

### Entradas

- Arquivo de pontos em CSV.
- Dicionário de códigos e descrições.
- CRS e unidades declarados.
- Template CAD ou projeto QGIS.
- Regras de nomenclatura.

### Etapas obrigatórias

1. Definir o objetivo e os produtos.
2. Validar os dados.
3. Identificar e registrar erros.
4. Importar os pontos.
5. Criar layers automaticamente.
6. Criar símbolos ou blocos para códigos definidos.
7. Gerar textos e cotas.
8. Criar linhas apenas com regra de conectividade.
9. Calcular distâncias e azimutes.
10. Calcular área quando houver polígono válido.
11. Gerar quadro de coordenadas.
12. Exportar DXF, KML/KMZ e XLSX.
13. Gerar memorial ou relatório.
14. Realizar conferência visual e numérica.
15. Entregar código, parâmetros, versões e log.

### Critérios de avaliação do projeto

| Critério | Peso sugerido |
|---|---:|
| Estrutura e validação dos dados | 20% |
| Correção geométrica e referência espacial | 20% |
| Implementação da automação | 20% |
| Organização cartográfica e CAD | 15% |
| Controle de qualidade e tratamento de erros | 15% |
| Documentação, reprodutibilidade e apresentação | 10% |

### Produtos mínimos

- `pontos.csv` original e versão validada.
- Código fonte documentado.
- `planta.dxf` ou projeto equivalente.
- `pontos.kml` ou `pontos.kmz`.
- `coordenadas.xlsx`.
- Relatório ou `memorial.docx`.
- `relatorio_validacao.txt`.
- Imagem ou PDF para inspeção visual.
- README com instruções de execução, dependências, CRS, unidades e limitações.

---

## 21. Atividade avaliativa individual

Redija uma resposta técnica de uma página para a seguinte situação:

> Você recebeu 5.000 pontos de um levantamento topográfico, mas o arquivo não informa CRS, unidade, delimitador, código de feição nem ordem de conectividade. O coordenador solicita uma planta “para hoje”. Explique quais verificações devem ser feitas antes da automação, quais produtos podem ser gerados preliminarmente e quais informações precisam ser solicitadas antes de uma entrega técnica definitiva.

A resposta será avaliada pela identificação dos riscos, pela sequência lógica de validação, pela distinção entre visualização preliminar e produto técnico e pela indicação de documentação e responsabilidade profissional.

---

## 22. Perguntas para discussão

1. Qual tarefa de um levantamento topográfico mais se beneficia de automação?
2. Qual decisão não deve ser delegada automaticamente ao código sem regra documentada?
3. Por que um DXF visualmente correto pode estar tecnicamente errado?
4. Em que situação o QGIS é mais apropriado que o AutoCAD?
5. Por que o CRS deve ser um parâmetro explícito?
6. Qual a diferença entre detectar um erro e corrigi-lo?
7. Como um template contribui para a qualidade do produto?
8. Que informações devem aparecer no log de uma rotina?
9. Como garantir que tabela, planta e memorial usem a mesma versão dos dados?
10. Quando a automação aumenta o risco em vez de reduzi-lo?

---

## 23. Gabarito e orientações de correção

### Exercício 1

O registro 2 possui cota ausente. Os registros 2 e 3 possuem o mesmo ID e as mesmas coordenadas, configurando duplicidade de registro ou possível observação repetida. O registro 4 possui código não previsto e descrição vazia. O registro 1 está completo conforme o esquema mínimo.

Uma política conservadora é aprovar o registro 1, rejeitar temporariamente o registro com cota ausente, investigar a duplicidade e encaminhar o registro 4 para a camada ou lista `REVISAR`. A rotina não deve inventar a cota, renumerar pontos ou substituir o código sem regra autorizada.

### Exercício 2

```text
concat('P-', to_string("ID"))
concat("CODIGO", ' - ', "DESCRICAO")
round("Z", 2)
x($geometry)
y($geometry)
"CODIGO" NOT IN ('PV', 'ED')
```

A expressão de área deve ser usada somente em geometria poligonal e com CRS adequado às unidades desejadas.

### Exercício 3

A solução deve conter leitura do cabeçalho, separação dos campos, conversão numérica, criação de layers, inserção de entidades e contadores. A correção deve considerar a ordem dos campos e o tratamento de linhas incompletas. Conectar todos os pontos do arquivo sem justificativa deve reduzir a nota de controle geométrico.

### Exercício 4

A solução mínima deve produzir os cinco arquivos, registrar o CRS e informar a quantidade de registros processados. O KML deve ser gerado com longitude e latitude em WGS84. A planilha e o memorial devem usar os valores da base validada. O DXF deve conter layers e textos legíveis. A ausência de dependências, parâmetros ou relatório de validação deve ser registrada como limitação.

### Exercício 5

A rotina deve ordenar os vértices por `ORDEM`, calcular segmentos consecutivos, testar o fechamento dentro de tolerância definida e calcular a área pelo método do cadarço. Uma polilinha aberta não deve ser apresentada como polígono fechado. Linhas cruzadas ou saltos anormais devem gerar alerta.

### Atividade avaliativa individual

A resposta esperada deve priorizar: identificação do CRS e unidades; confirmação da estrutura e codificação; validação de campos e duplicidades; consulta à ordem de conectividade; distinção entre produto preliminar e definitivo; geração de log; preservação do dado bruto; e solicitação de informações antes da emissão de produto final.

---

## 24. Boas práticas para desenvolver rotinas

1. Padronizar nomes de campos, layers, arquivos e versões.
2. Validar dados antes de criar entidades gráficas.
3. Utilizar templates revisados e identificados por versão.
4. Separar entrada bruta, entrada validada, processamento e saída.
5. Escrever mensagens de erro com linha, campo e causa provável.
6. Documentar código, dependências e parâmetros.
7. Criar testes pequenos antes de processar milhares de registros.
8. Manter backups e controle de versões.
9. Criar logs com data, versão, arquivo, CRS, número de entradas e saídas.
10. Evitar alterações manuais não registradas depois da automação.
11. Se uma alteração manual for inevitável, registrá-la no relatório.
12. Testar a rotina com dados válidos e inválidos.
13. Não presumir CRS, unidade, orientação ou ordem de vértices.
14. Usar tolerâncias documentadas e coerentes com o projeto.
15. Reutilizar funções, mas não copiar regras sem verificar o contexto.
16. Conferir visualmente e numericamente os produtos.
17. Empacotar código, template, dados de teste e instruções.
18. Tratar a automação como parte do sistema de qualidade do levantamento.

---

## 25. Encerramento da aula

A automação conecta observações de campo a produtos técnicos por meio de dados estruturados e regras explícitas. Ela reduz operações repetitivas, facilita atualizações, aumenta a padronização e cria condições para auditoria. Entretanto, o resultado somente será confiável se o levantamento, o sistema de referência, as unidades, os códigos, a conectividade, os cálculos e os critérios de qualidade estiverem corretamente definidos.

O desafio final deve ser retomado com a turma:

> **Imagine que você recebeu 5.000 pontos de um levantamento topográfico. Você faria todo o desenho manualmente?**

A resposta profissional não é simplesmente “usar um programa”. É construir um fluxo no qual:

```text
5.000 pontos
    → dados estruturados
    → validação
    → processamento
    → desenho
    → tabela
    → mapa
    → documentação
```

> **O profissional do futuro não será aquele que desenha mais rápido, mas aquele que sabe transformar dados em informação por meio de processos automatizados, confiáveis e reproduzíveis.**

---

## 26. Materiais complementares entregues

- [`PONTOS.csv`](PONTOS.csv): conjunto de dados didático.
- [`TOPO_PONTOS.lsp`](TOPO_PONTOS.lsp): rotina AutoLISP didática.
- [`gerador_planta.py`](gerador_planta.py): gerador Python de DXF, KML, XLSX, DOCX e relatório de validação.

Antes de utilizar os códigos em um projeto profissional, adaptar template, escala, CRS, unidades, regras de códigos, tolerâncias, representação, procedimentos de controle e requisitos do contratante.

---

## Referências

[1]: https://www.ibge.gov.br/geociencias/metodos-e-outros-documentos-de-referencia/normas/16463-especificacao-e-normas-gerais-para-levantamentos-geodesicos-em-territorio-brasileiro.html "IBGE — Especificação e Normas Gerais para Levantamentos Geodésicos em Território Brasileiro"

[2]: https://www.abntcatalogo.com.br/ "ABNT Catálogo — consulta de normas técnicas"

[3]: https://help.autodesk.com/view/OARX/2025/ENU/ "Autodesk — AutoCAD 2025 Developer and ObjectARX Help"

[4]: https://docs.qgis.org/latest/en/docs/user_manual/processing/modeler.html "QGIS Documentation — The Model Designer"

[5]: https://pyproj4.github.io/pyproj/stable/api/transformer.html "pyproj Documentation — Transformer"

[6]: https://docs.python.org/3/library/csv.html "Python Documentation — csv: File Reading and Writing"

[7]: https://www.ogc.org/standards/geopackage/ "Open Geospatial Consortium — GeoPackage Standard"

[8]: https://geopandas.org/en/stable/docs/user_guide/io.html "GeoPandas Documentation — Reading and writing files"

### Observação normativa

As referências normativas devem ser conferidas quanto à edição vigente, ao escopo e à aplicabilidade ao serviço específico. A aula não substitui a consulta integral às normas, aos manuais dos equipamentos, aos requisitos do contratante, às especificações do órgão responsável pelo sistema de referência e às atribuições profissionais aplicáveis.
