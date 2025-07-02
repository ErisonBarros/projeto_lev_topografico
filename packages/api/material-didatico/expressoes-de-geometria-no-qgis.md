---
icon: fill-drip
---

# 📌 Expressões de Geometria no QGIS

##

O **QGIS** permite o uso de **expressões de geometria** para realizar análises espaciais diretamente em camadas vetoriais, sem a necessidade de scripts. Essas expressões podem ser usadas em **Calculadora de Campo**, **Rotulagem**, **Simbologia**, **Filtros** e **Expressões SQL**.

***

### **🔷 Principais Expressões de Geometria**

Abaixo, estão algumas das expressões mais utilizadas no **QGIS** para manipulação de **geometrias**.

***

### **📌 1️⃣ Propriedades da Geometria**

Essas expressões retornam **informações** sobre a geometria de uma feição.

| Expressão               | Descrição                                                 |
| ----------------------- | --------------------------------------------------------- |
| `geometry()`            | Retorna a geometria do objeto.                            |
| `num_points($geometry)` | Número de vértices de uma geometria.                      |
| `num_rings($geometry)`  | Número de anéis (buracos) em um polígono.                 |
| `area($geometry)`       | Retorna a área de um polígono.                            |
| `length($geometry)`     | Retorna o comprimento de uma linha.                       |
| `x($geometry)`          | Retorna a coordenada X de um ponto.                       |
| `y($geometry)`          | Retorna a coordenada Y de um ponto.                       |
| `z($geometry)`          | Retorna a coordenada Z (se existir).                      |
| `bounds($geometry)`     | Retorna o retângulo delimitador (bounding box) da feição. |

📌 **Exemplo**: Criar um campo com a área de um polígono em metros quadrados:

```sql
sqlCopiarEditararea($geometry)
```

📌 **Exemplo**: Obter a coordenada X de um ponto:

```sql
sqlCopiarEditarx($geometry)
```

***

### **📌 2️⃣ Transformação de Geometria**

Expressões para modificar a geometria de uma feição.

| Expressão                     | Descrição                                            |
| ----------------------------- | ---------------------------------------------------- |
| `buffer($geometry, 100)`      | Cria um **buffer** de 100 metros ao redor da feição. |
| `centroid($geometry)`         | Retorna o **centroide** de uma geometria.            |
| `point_on_surface($geometry)` | Retorna um ponto garantido dentro do polígono.       |
| `simplify($geometry, 10)`     | Simplifica a geometria reduzindo vértices.           |
| `offset_curve($geometry, 50)` | Desloca uma linha **50 metros** para o lado.         |
| `reverse($geometry)`          | Inverte a direção da linha.                          |
| `make_point(500000, 9000000)` | Cria um ponto em coordenadas definidas.              |

📌 **Exemplo**: Criar um buffer de **500 metros** ao redor de uma feição:

```sql
sqlCopiarEditarbuffer($geometry, 500)
```

📌 **Exemplo**: Criar um ponto na coordenada **(500000, 9000000)**:

```sql
sqlCopiarEditarmake_point(500000, 9000000)
```

***

### **📌 3️⃣ Relacionamentos Espaciais**

Usado para verificar a relação entre feições.

| Expressão                                 | Descrição                                                   |
| ----------------------------------------- | ----------------------------------------------------------- |
| `intersects($geometry, geometry(@layer))` | Retorna **TRUE** se a feição atual **intersecciona** outra. |
| `contains($geometry, geometry(@layer))`   | Retorna **TRUE** se a feição atual **contém** outra.        |
| `within($geometry, geometry(@layer))`     | Retorna **TRUE** se a feição está **dentro** de outra.      |
| `touches($geometry, geometry(@layer))`    | Retorna **TRUE** se a feição **toca** outra.                |
| `overlaps($geometry, geometry(@layer))`   | Retorna **TRUE** se a feição **se sobrepõe** a outra.       |
| `crosses($geometry, geometry(@layer))`    | Retorna **TRUE** se a feição **cruza** outra.               |

📌 **Exemplo**: Selecionar feições que estão dentro de outra camada:

```sql
sqlCopiarEditarwithin($geometry, geometry(@other_layer))
```

📌 **Exemplo**: Verificar se um polígono toca outro:

```sql
sqlCopiarEditartouches($geometry, geometry(@layer))
```

***

### **📌 4️⃣ Coordenadas e Vértices**

Para manipular coordenadas e vértices de geometrias.

| Expressão                    | Descrição                                        |
| ---------------------------- | ------------------------------------------------ |
| `start_point($geometry)`     | Retorna o **primeiro ponto** de uma linha.       |
| `end_point($geometry)`       | Retorna o **último ponto** de uma linha.         |
| `point_n($geometry, 2)`      | Retorna o **segundo vértice** da geometria.      |
| `num_points($geometry)`      | Retorna o **número de vértices** de uma feição.  |
| `nodes_to_points($geometry)` | Converte os vértices de uma geometria em pontos. |

📌 **Exemplo**: Obter o primeiro ponto de uma linha:

```sql
sqlCopiarEditarstart_point($geometry)
```

📌 **Exemplo**: Converter os vértices de uma feição em pontos:

```sql
sqlCopiarEditarnodes_to_points($geometry)
```

***

### **📌 5️⃣ Converter Geometria para Texto**

Útil para depuração e manipulação de dados.

| Expressão               | Descrição                                           |
| ----------------------- | --------------------------------------------------- |
| `as_wkt($geometry)`     | Retorna a geometria como **WKT** (Well-Known Text). |
| `as_geojson($geometry)` | Retorna a geometria como **GeoJSON**.               |
| `as_gml($geometry)`     | Retorna a geometria como **GML**.                   |
| `as_kml($geometry)`     | Retorna a geometria como **KML**.                   |

📌 **Exemplo**: Converter geometria para WKT:

```sql
sqlCopiarEditaras_wkt($geometry)
```

📌 **Exemplo**: Converter geometria para GeoJSON:

```sql
sqlCopiarEditaras_geojson($geometry)
```

***

### **📌 6️⃣ Medidas Geodésicas**

Para cálculos mais precisos em coordenadas geográficas.

| Expressão                                               | Descrição                                               |
| ------------------------------------------------------- | ------------------------------------------------------- |
| `distance($geometry, geometry(@layer))`                 | Calcula a **distância** entre duas feições.             |
| `azimuth(start_point($geometry), end_point($geometry))` | Retorna o **azimute** entre dois pontos.                |
| `closest_point($geometry, geometry(@layer))`            | Retorna o **ponto mais próximo** entre duas geometrias. |
| `line_interpolate_point($geometry, 0.5)`                | Retorna o **ponto no meio da linha**.                   |

📌 **Exemplo**: Calcular a distância entre duas geometrias:

```sql
sqlCopiarEditardistance($geometry, geometry(@layer))
```

📌 **Exemplo**: Calcular o azimute entre dois pontos de uma linha:

```sql
sqlCopiarEditarazimuth(start_point($geometry), end_point($geometry))
```
