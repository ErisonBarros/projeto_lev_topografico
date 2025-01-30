---
icon: fill-drip
---

# Expressões no QGIS para Topografia

##

### **1. Introdução ao Uso de Expressões no QGIS**

#### **1.1 O que são Expressões no QGIS?**

* As expressões no QGIS são fórmulas usadas para calcular novos valores, manipular atributos e realizar análises espaciais.
* Aplicáveis em **calculadora de campos, filtros, simbologia, rotulagem e edição de atributos**.

#### **1.2 Por que usar Expressões na Topografia?**

* Automação de cálculos topográficos
* Geração de coordenadas e altitudes derivadas
* Aplicação de correções em dados brutos
* Cálculos de áreas e distâncias
* Filtros para análise de dados espaciais

***

### **2. Ferramentas que Utilizam Expressões**

* **Calculadora de Campos**: Criar e modificar atributos com base em fórmulas matemáticas e espaciais.
* **Editor de Rotulagem**: Criar rótulos dinâmicos com base em expressões.
* **Regras de Simbologia**: Aplicar estilos diferenciados conforme valores calculados.
* **Edição de Geometrias**: Criar e modificar camadas vetoriais utilizando expressões.

***

### **3. Expressões Fundamentais para Topografia**

#### **3.1 Cálculo de Coordenadas UTM**

```sql
$x  -- Retorna a coordenada X do ponto
$y  -- Retorna a coordenada Y do ponto
```

Exemplo: Criar atributos `Easting` e `Northing` na tabela de atributos.

#### **3.2 Cálculo da Distância Entre Dois Pontos**

```sql
distance(geometry(@layer), geometry(get_feature('camada', 'id', 2)))
```

* Mede a distância entre a feição atual e uma outra feição específica.

#### **3.3 Cálculo de Altura e Diferença de Cotas**

```sql
"cota_final" - "cota_inicial"
```

* Determina a diferença de altitudes entre pontos.

#### **3.4 Cálculo de Área em Hectares**

```sql
$area / 10000
```

* Converte a área para hectares.

#### **3.5 Cálculo de Azimute**

```sql
degrees(azimuth(geometry(@layer), geometry(get_feature('camada', 'id', 2))))
```

* Retorna o azimute entre dois pontos.

***

### **4. Aplicações Avançadas**

#### **4.1 Criando Expressões para Filtragem de Feições**

```sql
"cota" > 100  -- Seleciona todas as feições acima de 100 metros
```

```sql
intersects( $geometry, geometry( get_feature( 'rios', 'nome', 'Rio Capibaribe' )))
```

* Seleciona feições que interceptam o Rio Capibaribe.

#### **4.2 Rotulação Dinâmica para Cotas**

```sql
concat('Cota: ', "cota", 'm')
```

* Exibe rótulos personalizados com valores de cota.

#### **4.3 Cálculo Automático de Comprimento de Linhas**

```sql
$length
```

* Calcula o comprimento de uma linha automaticamente.

***

###

***

###
