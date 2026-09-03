# Base de pontos para perfis topográficos

## Conteúdo do arquivo `pontos.txt`

O arquivo fornecido possui 166 registros sem cabeçalho. Para este exercício, o grupo deverá testar a seguinte interpretação:

| Intervalo de IDs | Interpretação didática | Tratamento solicitado |
|---|---|---|
| 1–87 | Pontos do eixo em coordenadas projetadas de grande magnitude. | Calcular estação acumulada, azimute, distância e cota. |
| 88–166 | Pontos coletados ou extraídos do PE3D em coordenadas locais. | Confirmar o pareamento espacial, comparar cotas e documentar a transformação. |

Essa interpretação é uma **hipótese inicial de trabalho**. Ela não deve ser aceita sem conferência no QGIS, porque o arquivo não contém cabeçalho, metadados de CRS, identificação de equipamento ou informação explícita sobre a origem de cada bloco.

## Arquivos gerados

- `pontos_eixo_fornecidos.csv`: pontos 1–87 com estação acumulada.
- `pontos_coletados_pe3d.csv`: pontos 88–166, pareamento inicial e diferenças de cota.
- `estaqueamento_20m.csv`: eixo interpolado de 20 em 20 metros.
- `secoes_transversais_500m_10m.csv`: posições do eixo, 10 m à esquerda e 10 m à direita, nas estações 0, 500, 1000 e 1500 m.
- `roteiro_perimetrico_eixo.csv`: azimute, distância, cotas e declividade entre pontos consecutivos do eixo.
- `comparacao_cotas_fornecida_pe3d.csv`: comparação preliminar entre a cota do eixo fornecida e a cota do conjunto local.
- `planilha_exercicio_perfis_topograficos.xlsx`: pasta de trabalho com visão geral, tabelas, fórmulas, filtros, formatação e gráfico preliminar.

## Premissas e cuidados

A estação inicial é 0+000,00 no ponto 1. A estação acumulada foi calculada pela distância plana entre pontos consecutivos do eixo. As estacas regulares foram interpoladas linearmente ao longo dos segmentos. O último ponto do eixo está aproximadamente na estação 1+717,82.

As seções transversais foram criadas nas estações 0+000, 0+500, 1+000 e 1+500, com offsets de -10, 0 e +10 metros. No arquivo de seções, offset negativo representa esquerda e offset positivo representa direita considerando o sentido de progressão do eixo. O grupo deverá confirmar a convenção no CAD e no QGIS.

A cota da seção transversal não pode ser inventada. Para cada alvo de ±10 m, o grupo deverá consultar o PE3D no QGIS, extrair a cota com a ferramenta e o método definidos no relatório, preencher a planilha e registrar a resolução espacial, o CRS, a data e a fonte do PE3D.

A diferença de cota na aba `Comparacao_Cotas` é inicialmente calculada como:

```text
Diferença Z = Cota coletada / PE3D − Cota fornecida
```

O pareamento inicial utiliza uma translação estimada a partir do ponto 1 do eixo e do ponto 151 do conjunto local. O grupo deve verificar se a transformação é apenas translacional ou se exige rotação, escala, transformação de datum ou outro procedimento.

## Planilha

Na aba `Secoes_500m`, as colunas `Cota PE3D extraída (m)` e `Diferença PE3D−eixo (m)` são campos de trabalho. A diferença é preenchida automaticamente quando a cota PE3D é inserida.

Na aba `Comparacao_Cotas`, os valores são uma comparação preliminar produzida a partir do próprio arquivo fornecido. O resultado não substitui a extração independente do PE3D.
