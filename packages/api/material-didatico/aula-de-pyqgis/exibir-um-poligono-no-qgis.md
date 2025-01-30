---
icon: fill-drip
description: Prof. Erison Barros.
---

# Exibir um Polígono no QGIS

## **Estrutura do PyQGIS para Criar um Polígono**

O **PyQGIS** é a API Python do **QGIS**, usada para manipular e criar objetos geoespaciais. Para criar um **polígono**, seguimos uma estrutura padrão:

***

### **1️⃣ Criar uma Camada Vetorial**

Para desenhar um polígono, é necessário criar uma **camada vetorial** que armazenará os dados geométricos.

```python
pythonCopiarEditarlayer = QgsVectorLayer("Polygon?crs=EPSG:4326", "Meu_Poligono", "memory")
```

Aqui, definimos:

* **Tipo de geometria**: `"Polygon"`
* **Sistema de referência**: `EPSG:4326` (WGS 84 - Latitude/Longitude)
* **Armazenamento**: `"memory"` (temporária)

Para manipular os dados da camada, usamos seu **provedor de dados**:

```python
pythonCopiarEditarprovider = layer.dataProvider()
```

***

### **2️⃣ Criar os Atributos da Camada**

Os polígonos podem ter **atributos** armazenados em uma tabela de atributos.

Adicionamos um campo `id` do tipo **inteiro**:

```python
pythonCopiarEditarfrom PyQt5.QtCore import QVariant
provider.addAttributes([QgsField("id", QVariant.Int)])
layer.updateFields()
```

***

### **3️⃣ Criar a Geometria do Polígono**

Os polígonos são compostos por **uma lista de pontos** que definem seus vértices.

#### 🔹 Criando um polígono simples:

```python
pythonCopiarEditarfrom qgis.core import QgsGeometry, QgsPointXY

pontos = [
    QgsPointXY(-34.90, -8.10),  # Ponto 1
    QgsPointXY(-34.85, -8.10),  # Ponto 2
    QgsPointXY(-34.85, -8.05),  # Ponto 3
    QgsPointXY(-34.90, -8.05),  # Ponto 4
    QgsPointXY(-34.90, -8.10)   # Fechando o polígono
]
```

Para definir a **geometria** do polígono:

```python
pythonCopiarEditargeometria = QgsGeometry.fromPolygonXY([pontos])
```

***

### **4️⃣ Criar a Feição e Adicionar à Camada**

Criamos uma **feição** (objeto vetorial):

```python
pythonCopiarEditarfeature = QgsFeature()
feature.setGeometry(geometria)
feature.setAttributes([1])  # ID do polígono
```

Adicionamos essa feição à camada:

```python
pythonCopiarEditarprovider.addFeatures([feature])
layer.updateExtents()
```

***

### **5️⃣ Adicionar a Camada ao Projeto**

Após criar o polígono, ele precisa ser exibido no **Mapa do QGIS**:

```python
pythonCopiarEditarfrom qgis.core import QgsProject
QgsProject.instance().addMapLayer(layer)
```

***

### **📌 Estrutura Completa do Código**

Aqui está um **script completo** para desenhar um polígono no QGIS:

```python
pythonCopiarEditarfrom qgis.core import (
    QgsVectorLayer,
    QgsFeature,
    QgsGeometry,
    QgsPointXY,
    QgsField,
    QgsProject
)
from PyQt5.QtCore import QVariant

# 1️⃣ Criar uma camada vetorial do tipo polígono
layer = QgsVectorLayer("Polygon?crs=EPSG:4326", "Meu_Poligono", "memory")
provider = layer.dataProvider()

# 2️⃣ Criar atributos
provider.addAttributes([QgsField("id", QVariant.Int)])
layer.updateFields()

# 3️⃣ Criar a geometria do polígono
pontos = [
    QgsPointXY(-34.90, -8.10),
    QgsPointXY(-34.85, -8.10),
    QgsPointXY(-34.85, -8.05),
    QgsPointXY(-34.90, -8.05),
    QgsPointXY(-34.90, -8.10)  # Fechando o polígono
]
geometria = QgsGeometry.fromPolygonXY([pontos])

# 4️⃣ Criar a feição e adicionar à camada
feature = QgsFeature()
feature.setGeometry(geometria)
feature.setAttributes([1])
provider.addFeatures([feature])
layer.updateExtents()

# 5️⃣ Adicionar a camada ao projeto do QGIS
QgsProject.instance().addMapLayer(layer)

print("✅ Polígono criado com sucesso!")
```

***

### **📌 Resumo da Estrutura**

1️⃣ **Criar uma camada vetorial** do tipo **polígono**\
2️⃣ **Adicionar atributos** (colunas) à camada\
3️⃣ **Criar a geometria** (lista de pontos)\
4️⃣ **Criar uma feição (feature)** e adicionar ao provedor de dados\
5️⃣ **Adicionar a camada ao projeto QGIS** para exibição

Com essa estrutura, é possível modificar o código para desenhar polígonos com diferentes formatos e coordenadas.

####

####

####

#### 📌 **Passos do Script**

1. Cria uma camada vetorial temporária no QGIS.
2. Adiciona um polígono definido por coordenadas.
3. Exibe o polígono no mapa.

***

#### **Script: Criar e Exibir um Polígono no QGIS**

Este script pode ser executado no console Python do QGIS.

```python
pythonCopiarEditar# Importa as bibliotecas necessárias do PyQGIS
from qgis.core import (
    QgsVectorLayer,
    QgsFeature,
    QgsGeometry,
    QgsPointXY,
    QgsField,
    QgsProject,
    QgsCoordinateReferenceSystem
)
from PyQt5.QtCore import QVariant

# Define o Sistema de Referência de Coordenadas (SRC) para WGS 84 (EPSG:4326)
crs = QgsCoordinateReferenceSystem("EPSG:4326")

# Cria uma camada vetorial temporária do tipo polígono
layer = QgsVectorLayer("Polygon?crs=EPSG:4326", "Meu_Poligono", "memory")
provider = layer.dataProvider()

# Adiciona um campo de ID à camada
provider.addAttributes([QgsField("id", QVariant.Int)])
layer.updateFields()

# Define os vértices do polígono (exemplo: um quadrado)
points = [
    QgsPointXY(-34.90, -8.10),  # Ponto 1
    QgsPointXY(-34.85, -8.10),  # Ponto 2
    QgsPointXY(-34.85, -8.05),  # Ponto 3
    QgsPointXY(-34.90, -8.05),  # Ponto 4
    QgsPointXY(-34.90, -8.10)   # Fechando o polígono
]

# Cria um objeto QgsFeature (elemento do vetor)
feature = QgsFeature()
feature.setGeometry(QgsGeometry.fromPolygonXY([points]))
feature.setAttributes([1])  # Define o ID

# Adiciona o polígono à camada
provider.addFeatures([feature])
layer.updateExtents()

# Adiciona a camada ao projeto do QGIS
QgsProject.instance().addMapLayer(layer)

print("Polígono desenhado com sucesso!")
```

***

#### **Explicação**

* O script cria uma camada vetorial temporária chamada `Meu_Poligono`.
* Define um polígono com coordenadas geográficas (latitude e longitude).
* Adiciona um campo de ID e insere o polígono na camada.
* Insere a camada no projeto do QGIS para exibição.

Após rodar o código no **console Python do QGIS**, o polígono será exibido na tela. Você pode alterar as coordenadas para desenhar diferentes formas.
