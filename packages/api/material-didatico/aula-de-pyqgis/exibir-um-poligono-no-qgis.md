---
icon: fill-drip
---

# Exibir um Polígono no QGIS

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
