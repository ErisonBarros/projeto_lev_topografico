---
description: Prof. Erison Barros
---

# Expressões e Funções Python no QGIS

### Introdução

O QGIS é um dos softwares mais populares para Sistemas de Informação Geográfica (SIG) e oferece diversas formas de manipulação de dados geoespaciais. Entre essas formas, estão as **expressões** e **funções Python**, que permitem realizar cálculos, criar filtros, modificar atributos e muito mais.

### 1. Expressões no QGIS

As expressões são usadas para realizar operações matemáticas, lógicas e de manipulação de dados dentro do QGIS. Elas podem ser utilizadas em:

* Calculadora de Campos
* Regras de Simbologia e Rótulos
* Filtros e Seleção de Feições
* Regras de Validação

#### 1.1 Exemplos de Expressões

**Cálculo de área em hectares:**

```qgis
$area / 10000
```

**Criando um rótulo concatenado:**

```qgis
concat('ID: ', id, ' - Nome: ', nome)
```

**Selecionando feições com área maior que 100 hectares:**

```qgis
$area > 1000000
```

**Classificação de dados com `CASE`:**

```qgis
CASE
    WHEN $area < 500 THEN 'Pequeno'
    WHEN $area >= 500 AND $area < 1000 THEN 'Médio'
    ELSE 'Grande'
END
```

### 2. Funções Python no QGIS

O QGIS permite a criação de funções personalizadas em Python para manipulação de atributos e geometria. Essas funções podem ser usadas dentro da Calculadora de Campos ou em Scripts do QGIS.

#### 2.1 Criando uma Função Personalizada

Para criar uma função Python no QGIS, siga os passos:

1. Abra a Calculadora de Campos.
2. Clique em **Funções Personalizadas**.
3. Clique em **Editar** para abrir o editor de scripts Python.

**Exemplo 1: Converter Metros para Quilômetros**

```python
def metros_para_km(value, feature, parent):
    return value / 1000

@qgsfunction(args='auto', group='Custom')
def convert_metros_km(value, feature, parent):
    return metros_para_km(value, feature, parent)
```

**Exemplo 2: Contar Números de Caracteres em um Campo**

```python
@qgsfunction(args='auto', group='Custom')
def contar_caracteres(texto, feature, parent):
    return len(texto)
```

### 3. Aplicando as Funções no QGIS

Depois de criar uma função Python personalizada, ela pode ser usada em qualquer expressão dentro do QGIS, como:

```qgis
convert_metros_km(5000)  -- Resultado: 5
contar_caracteres('QGIS Python')  -- Resultado: 11
```

### 4. Conclusão

As expressões e funções Python no QGIS são ferramentas poderosas que permitem aos usuários manipular e analisar dados de maneira avançada. Com o uso adequado, é possível automatizar processos e melhorar significativamente a eficiência no tratamento de informações geoespaciais.
