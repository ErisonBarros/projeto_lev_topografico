# Dados didáticos do exercício

A base `pontos_exercicio.csv` contém 35 registros para o exercício integrador. Os registros 1 a 31 representam pontos e feições de uma área didática. Os registros 32 a 35 foram inseridos deliberadamente para que os grupos pratiquem validação e elaboração de logs.

## Referência espacial didática

Para esta base simulada, adotar o sistema de referência informado pelo professor: SIRGAS 2000 / UTM zona 25S, com unidade linear em metro. Antes de utilizar o arquivo em uma área real, confirmar o CRS, o fuso, o datum, a época e as unidades do levantamento.

## Dicionário de códigos

| Código | Significado | Geometria esperada |
|---|---|---|
| `GCP` | Ponto de controle | Ponto |
| `ED` | Edificação | Linha ou polígono por `LINHA_ID` e `ORDEM` |
| `PV` | Poste | Ponto |
| `ARV` | Árvore | Ponto |
| `BL` | Boca de lobo | Ponto |
| `MC` | Meio-fio | Linha por `LINHA_ID` e `ORDEM` |
| `SAR` | Sarjeta | Linha por `LINHA_ID` e `ORDEM` |
| `TR` | Travessia | Ponto ou linha, conforme decisão do grupo |
| `XX` | Código inválido proposital | Deve gerar alerta ou erro |

## Erros intencionais para validar

- o registro 32 utiliza o código `XX`, que não pertence ao dicionário;
- o registro 33 possui a cota `Z` vazia;
- o registro 34 repete a coordenada do registro 33;
- o registro 35 repete coordenada e conteúdo essencial do ponto 1, além de representar um caso de duplicidade a ser tratado pelo grupo.

A correção dos registros deve ser documentada. Não apagar os registros da base bruta. Criar uma versão validada e um arquivo de rejeitados ou de pendências.

## Exercício complementar de perfis topográficos

Para o exercício de perfil longitudinal, esta base também possui a pasta [`perfil/`](perfil/), que contém o arquivo original `pontos.txt`, os arquivos derivados, o roteiro perimétrico, o estaqueamento de 20 em 20 metros, as seções transversais de 500 em 500 metros com 10 metros para cada lado e a planilha de comparação entre cotas fornecidas e cotas coletadas ou extraídas do PE3D.
