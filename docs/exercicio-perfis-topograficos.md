# Exercício de Perfis Topográficos no CAD e no QGIS

> **Atividade para grupos de cinco alunos:** gerar perfil longitudinal, perfis transversais, estaqueamento, roteiro geométrico e comparação de cotas com apoio do PE3D.

## Acesso rápido

| Recurso | Ação |
|---|---|
| [Enunciado completo no GitHub](https://github.com/ErisonBarros/projeto_lev_topografico/blob/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/exercicio_perfis_topograficos_cad_qgis.md) | Ler o exercício completo e os critérios de avaliação. |
| [Apresentação HTML com 31 slides](https://erisonbarros.github.io/projeto_lev_topografico/apresentacao/automacao-topografica/) | Revisar o conteúdo da aula. |
| [Pasta de dados no GitHub](https://github.com/ErisonBarros/projeto_lev_topografico/tree/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil) | Consultar arquivos, metadados e código de apoio. |
| [Página do LABAT](https://erisonbarros.github.io/projeto_lev_topografico/sobre-labat/) | Acessar a página institucional do laboratório. |

## Objetivo

O grupo deverá utilizar o arquivo de pontos fornecido para gerar um **perfil longitudinal no CAD e no QGIS**, com estaqueamento de 20 em 20 metros. Também deverá gerar seções transversais nas estações 0+000, 0+500, 1+000 e 1+500, utilizando pontos situados a 10 metros à esquerda e a 10 metros à direita do eixo.

As cotas das seções deverão ser extraídas do **PE3D** ou da fonte de dados indicada pelo professor. O grupo deverá registrar a fonte, o CRS, a resolução ou densidade, o método de extração e a forma de tratamento dos valores ausentes.

O trabalho inclui ainda um roteiro geométrico entre pontos consecutivos, com **azimute, distância, cotas, diferença de cota e declividade**, além de uma planilha de comparação entre cotas fornecidas e cotas coletadas ou associadas ao PE3D.

## Arquivo original

O arquivo bruto possui 166 registros no formato `ID,X,Y,Z`, sem cabeçalho. Faça o download do arquivo e preserve-o sem alteração:

- [Baixar `pontos.txt`](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/pontos.txt)
- [Ver `pontos.txt` no GitHub](https://github.com/ErisonBarros/projeto_lev_topografico/blob/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/pontos.txt)

O conjunto de trabalho apresenta duas estruturas aparentes. Os pontos 1 a 87 formam uma sequência em coordenadas projetadas de grande magnitude. Os pontos 88 a 166 estão em coordenadas locais e devem ser conferidos antes de serem comparados ao eixo.

> A correspondência entre os dois conjuntos é uma hipótese inicial. Ela foi organizada por uma translação preliminar, mas deve ser verificada no QGIS antes de ser utilizada como conclusão técnica.

## Dados derivados para conferência

Os arquivos abaixo foram gerados a partir do arquivo fornecido. Eles são materiais de apoio e não substituem a conferência dos alunos.

| Arquivo | Download |
|---|---|
| Eixo com estação acumulada | [Baixar CSV](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/pontos_eixo_fornecidos.csv) |
| Pontos coletados ou PE3D com pareamento preliminar | [Baixar CSV](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/pontos_coletados_pe3d.csv) |
| Estaqueamento de 20 em 20 m | [Baixar CSV](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/estaqueamento_20m.csv) |
| Seções de 500 m com offsets de ±10 m | [Baixar CSV](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/secoes_transversais_500m_10m.csv) |
| Roteiro com azimute, distância e cota | [Baixar CSV](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/roteiro_perimetrico_eixo.csv) |
| Comparação preliminar de cotas | [Baixar CSV](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/comparacao_cotas_fornecida_pe3d.csv) |
| Planilha completa do exercício | [Baixar XLSX](https://github.com/ErisonBarros/projeto_lev_topografico/raw/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/planilha_exercicio_perfis_topograficos.xlsx) |
| Script de geração dos arquivos | [Baixar Python](https://raw.githubusercontent.com/ErisonBarros/projeto_lev_topografico/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/gerar_arquivos_perfis.py) |
| Instruções e premissas da base | [Ler README da base](https://github.com/ErisonBarros/projeto_lev_topografico/blob/erison.barros/aulas/automa%C3%A7%C3%A3o%20Topogr%C3%A1fica/dados_exercicio/perfil/README.md) |

### Download completo

Para baixar todos os arquivos de uma só vez, utilize o pacote abaixo. Ele contém o `pontos.txt` original, os CSVs derivados, a planilha XLSX, o README da base e o script Python de geração:

- [Baixar pacote completo — `dados_perfil_topografico.zip`](../downloads/dados_perfil_topografico.zip)
- [Baixar o pacote pelo GitHub](https://github.com/ErisonBarros/projeto_lev_topografico/raw/erison.barros/docs/downloads/dados_perfil_topografico.zip)

## Entregas obrigatórias

O grupo deverá entregar um pacote com o perfil longitudinal em CAD, o perfil longitudinal no QGIS, quatro seções transversais, a camada do eixo, a camada dos pontos de seção, o roteiro geométrico, a planilha de diferenças, o relatório técnico, os logs de processamento e o checklist de controle de qualidade.

A organização mínima recomendada é:

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

## Parâmetros obrigatórios

| Parâmetro | Valor ou exigência |
|---|---|
| Estação inicial | 0+000,00 no ponto 1. |
| Intervalo de estaqueamento | 20,00 m. |
| Seções transversais | A cada 500,00 m. |
| Largura mínima das seções | 10,00 m para cada lado do eixo. |
| Estações das seções | 0+000, 0+500, 1+000 e 1+500. |
| Azimute | Declarar a convenção; recomenda-se Norte, sentido horário. |
| Diferença de cota | Declarar o sinal; recomenda-se `Z_PE3D − Z_fornecida`. |
| CRS e unidades | Informar a fonte, a projeção, o fuso, o datum e a unidade. |
| PE3D | Registrar fonte, resolução ou densidade e método de extração. |

## Validação dos resultados

Antes da entrega, verifique se a estação aumenta no sentido correto, se o estaqueamento contém as estações regulares, se as quatro seções possuem offsets -10, 0 e +10 m, se as coordenadas das seções coincidem com o eixo e se as cotas foram extraídas com método documentado.

Compare o número de pontos, IDs, estações e cotas entre os arquivos CSV, o CAD, o QGIS, a planilha e os PDFs. Registre no log qualquer diferença. Não elimine registros do arquivo bruto e não substitua valores ausentes por zero sem justificativa.

## Avaliação

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

## Aviso técnico

Os arquivos derivados contêm cálculos preliminares baseados exclusivamente no arquivo fornecido. O PE3D utilizado pelo grupo poderá ter outra resolução, outra origem ou outra estrutura. Portanto, nenhum valor de cota extraído de uma fonte externa deverá ser incorporado sem registrar metadados e método de amostragem.

A interpolação da cota nas estacas regulares representa uma aproximação entre pontos do eixo. Ela não substitui uma observação independente. A comparação entre cotas somente poderá ser interpretada depois da conferência do pareamento espacial, do CRS, das unidades e da referência altimétrica.
