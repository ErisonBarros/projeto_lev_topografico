---
icon: fill-drip
---

# 📌 Estrutura para Criar um Script que Desenha Ponto e Linha no PyQGIS

O **PyQGIS** permite criar diferentes tipos de feições geoespaciais, como **pontos**, **linhas** e **polígonos**. A estrutura para desenhar **pontos** e **linhas** no QGIS é semelhante à de polígonos, com algumas diferenças.

***

### **1️⃣ Estrutura Geral**

Para desenhar **um ponto e uma linha**, seguimos os seguintes passos:

1. Criar **camadas vetoriais** separadas para ponto e linha.
2. Criar os **atributos** das camadas.
3. Criar **geometrias** (um ponto e uma linha).
4. Criar **feições** e adicionar às camadas.
5. Adicionar as camadas ao **projeto QGIS**.

***

### **2️⃣ Criar uma Camada Vetorial para Ponto**

Criamos uma **camada do tipo ponto**, definindo o **Sistema de Referência de Coordenadas (SRC)**:

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

# Criar uma camada de ponto
ponto_layer = QgsVectorLayer("Point?crs=EPSG:4326", "Meu_Ponto", "memory")
ponto_provider = ponto_layer.dataProvider()

# Criar atributos (campos na tabela de atributos)
ponto_provider.addAttributes([QgsField("id", QVariant.Int)])
ponto_layer.updateFields()
```

***

### **3️⃣ Criar um Ponto**

O **ponto** é representado por **coordenadas geográficas (longitude, latitude)** ou **UTM (X, Y)**.

```python
pythonCopiarEditar# Definir a coordenada do ponto
ponto = QgsPointXY(-34.90, -8.10)

# Criar a feição do ponto
ponto_feature = QgsFeature()
ponto_feature.setGeometry(QgsGeometry.fromPointXY(ponto))
ponto_feature.setAttributes([1])

# Adicionar o ponto à camada
ponto_provider.addFeatures([ponto_feature])
ponto_layer.updateExtents()
```

***

### **4️⃣ Criar uma Camada Vetorial para Linha**

Criamos agora uma **camada do tipo linha**:

```python
pythonCopiarEditar# Criar uma camada de linha
linha_layer = QgsVectorLayer("LineString?crs=EPSG:4326", "Minha_Linha", "memory")
linha_provider = linha_layer.dataProvider()

# Criar atributos da linha
linha_provider.addAttributes([QgsField("id", QVariant.Int)])
linha_layer.updateFields()
```

***

### **5️⃣ Criar uma Linha**

A **linha** é representada por **uma lista de pontos**:

```python
pythonCopiarEditar# Definir os pontos da linha
linha_pontos = [
    QgsPointXY(-34.90, -8.10),  # Ponto inicial
    QgsPointXY(-34.85, -8.10),  # Ponto intermediário
    QgsPointXY(-34.85, -8.05)   # Ponto final
]

# Criar a feição da linha
linha_feature = QgsFeature()
linha_feature.setGeometry(QgsGeometry.fromPolylineXY(linha_pontos))
linha_feature.setAttributes([1])

# Adicionar a linha à camada
linha_provider.addFeatures([linha_feature])
linha_layer.updateExtents()
```

***

### **6️⃣ Adicionar as Camadas ao Projeto**

Para exibir os objetos no **mapa do QGIS**, adicionamos as camadas ao projeto:

```python
pythonCopiarEditar# Adicionar as camadas ao QGIS
QgsProject.instance().addMapLayer(ponto_layer)
QgsProject.instance().addMapLayer(linha_layer)

print("✅ Ponto e linha desenhados com sucesso!")
```

***

### **📌 Script Completo**

Aqui está o código completo para desenhar um **ponto** e uma **linha** no QGIS:

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

# 1️⃣ Criar camada de ponto
ponto_layer = QgsVectorLayer("Point?crs=EPSG:4326", "Meu_Ponto", "memory")
ponto_provider = ponto_layer.dataProvider()
ponto_provider.addAttributes([QgsField("id", QVariant.Int)])
ponto_layer.updateFields()

# 2️⃣ Criar camada de linha
linha_layer = QgsVectorLayer("LineString?crs=EPSG:4326", "Minha_Linha", "memory")
linha_provider = linha_layer.dataProvider()
linha_provider.addAttributes([QgsField("id", QVariant.Int)])
linha_layer.updateFields()

# 3️⃣ Criar um ponto
ponto = QgsPointXY(-34.90, -8.10)
ponto_feature = QgsFeature()
ponto_feature.setGeometry(QgsGeometry.fromPointXY(ponto))
ponto_feature.setAttributes([1])
ponto_provider.addFeatures([ponto_feature])
ponto_layer.updateExtents()

# 4️⃣ Criar uma linha
linha_pontos = [
    QgsPointXY(-34.90, -8.10),
    QgsPointXY(-34.85, -8.10),
    QgsPointXY(-34.85, -8.05)
]
linha_feature = QgsFeature()
linha_feature.setGeometry(QgsGeometry.fromPolylineXY(linha_pontos))
linha_feature.setAttributes([1])
linha_provider.addFeatures([linha_feature])
linha_layer.updateExtents()

# 5️⃣ Adicionar ao projeto do QGIS
QgsProject.instance().addMapLayer(ponto_layer)
QgsProject.instance().addMapLayer(linha_layer)

print("✅ Ponto e linha desenhados com sucesso!")
```

***

### **📌 Resumo da Estrutura**

1️⃣ **Criar camada vetorial** para ponto e linha.\
2️⃣ **Adicionar atributos** às camadas.\
3️⃣ **Criar um ponto** e definir sua geometria.\
4️⃣ **Criar uma linha** com uma sequência de pontos.\
5️⃣ **Adicionar feições (features) às camadas**.\
6️⃣ **Adicionar as camadas ao QGIS** para exibição.

***

#### **🛠 Personalizações Possíveis**

* Mudar o **sistema de coordenadas** (`EPSG:4326` → `EPSG:31985` para UTM).
* Adicionar **novos atributos** às feições.
* Criar **múltiplos pontos ou linhas** dinamicamente.
