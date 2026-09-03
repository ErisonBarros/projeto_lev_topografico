# Materiais de apoio — Automatização de desenhos topográficos

## Arquivos

- `aula_automatizacao_desenhos_topograficos.md`: material didático completo.
- `PONTOS.csv`: base de demonstração.
- `TOPO_PONTOS.lsp`: rotina AutoLISP para AutoCAD.
- `gerador_planta.py`: gerador Python de DXF, KML, XLSX, DOCX e relatório.
- `requirements.txt`: dependências Python.

## Execução do gerador Python

Em um ambiente virtual ou instalação controlada, instale as dependências:

```bash
python -m pip install -r requirements.txt
```

Execute o exemplo:

```bash
python gerador_planta.py \
  --input PONTOS.csv \
  --output saida \
  --source-crs EPSG:31985
```

O `EPSG:31985` foi usado apenas como exemplo coerente com coordenadas métricas na região didática. Substitua-o pelo CRS real do levantamento. Não escolha o CRS somente pela aparência dos valores.

Para demonstrar uma linha na ordem do arquivo:

```bash
python gerador_planta.py \
  --input PONTOS.csv \
  --output saida_com_linha \
  --source-crs EPSG:31985 \
  --connect
```

A opção `--connect` é deliberadamente opcional. Em um projeto real, a conectividade deve vir de uma regra de linha, de um campo de ordem ou de uma estrutura topológica validada.

## Execução no AutoCAD

1. Abra o AutoCAD.
2. Use `APPLOAD` para carregar `TOPO_PONTOS.lsp`.
3. Digite `TOPO_PONTOS` na linha de comando.
4. Selecione `PONTOS.csv`.
5. Verifique os layers, os textos e o quadro criado.
6. Confira os produtos antes de qualquer uso profissional.

A rotina didática assume separador vírgula e não interpreta campos CSV entre aspas. Para bases reais, adapte o parser e valide codificação, delimitador, decimal, campos, CRS e regras de conectividade.

## Limitações

Os materiais são exemplos para ensino. Eles não substituem o planejamento do levantamento, os manuais dos equipamentos, as normas aplicáveis, a especificação do contratante, o controle de qualidade nem a responsabilidade técnica do profissional habilitado.
