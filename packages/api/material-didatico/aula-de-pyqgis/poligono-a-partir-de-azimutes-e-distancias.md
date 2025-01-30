# Polígono a partir de Azimutes e Distâncias

### **Como funciona o script**

1. **Define um ponto inicial** (coordenadas geográficas ou projetadas).
2. **Calcula os próximos vértices** a partir de azimutes e distâncias.
3. **Cria um polígono** e adiciona à camada vetorial no QGIS.

***

#### **🔷 Script: Criando um Polígono a partir de Azimutes e Distâncias**

Execute este script no **console Python do QGIS**.

```python
pythonCopiarEditarfrom qgis.core import (
    QgsVectorLayer,
    QgsFeature,
    QgsGeometry,
    QgsPointXY,
    QgsField,
    QgsProject,
    QgsCoordinateReferenceSystem
)
from PyQt5.QtCore import QVariant
import math

# 📌 Definição do SRC (Sistema de Referência de Coordenadas) - EPSG:4326 (Lat/Lon)
crs = QgsCoordinateReferenceSystem("EPSG:4326")

# Criação da camada vetorial de polígonos na memória
layer = QgsVectorLayer("Polygon?crs=EPSG:4326", "Poligono_Azimute_Distancia", "memory")
provider = layer.dataProvider()

# Adiciona um campo ID
provider.addAttributes([QgsField("id", QVariant.Int)])
layer.updateFields()

# 📌 Define o ponto inicial (latitude e longitude)
ponto_inicial = QgsPointXY(-34.90, -8.10)  # Recife-PE (exemplo)

# 📌 Lista de azimutes (graus) e distâncias (metros)
azimutes_distancias = [
    (45, 1000),   # 45° (Nordeste) - 1000 metros
    (135, 800),   # 135° (Sudeste) - 800 metros
    (225, 1000),  # 225° (Sudoeste) - 1000 metros
    (315, 800)    # 315° (Noroeste) - 800 metros
]

# Função para calcular nova coordenada a partir de azimute e distância
def calcular_novo_ponto(ponto, azimute, distancia):
    azimute_rad = math.radians(azimute)  # Converte para radianos
    raio_terra = 6378137.0  # Raio da Terra em metros
    
    # Deslocamento em coordenadas geográficas
    delta_lat = (distancia * math.cos(azimute_rad)) / raio_terra
    delta_lon = (distancia * math.sin(azimute_rad)) / (raio_terra * math.cos(math.radians(ponto.y())))
    
    nova_lat = ponto.y() + math.degrees(delta_lat)
    nova_lon = ponto.x() + math.degrees(delta_lon)

    return QgsPointXY(nova_lon, nova_lat)

# 📌 Calcula os pontos do polígono
pontos = [ponto_inicial]
for azimute, distancia in azimutes_distancias:
    novo_ponto = calcular_novo_ponto(pontos[-1], azimute, distancia)
    pontos.append(novo_ponto)

# Fecha o polígono
pontos.append(pontos[0])

# 📌 Cria um objeto de feição (feature) e adiciona o polígono
feature = QgsFeature()
feature.setGeometry(QgsGeometry.fromPolygonXY([pontos]))
feature.setAttributes([1])  # ID

# Adiciona à camada
provider.addFeatures([feature])
layer.updateExtents()

# 📌 Adiciona a camada ao QGIS
QgsProject.instance().addMapLayer(layer)

print("✅ Polígono criado com sucesso!")
```

***

#### **📌 Explicação**

* **Azimutes e distâncias** são usados para calcular novos pontos a partir do inicial.
* **A função `calcular_novo_ponto()`** usa fórmulas geodésicas para converter deslocamentos de azimute/distância em novas coordenadas.
* **O polígono é desenhado no QGIS** e adicionado ao projeto.

***

#### **🛠 Personalização**

* **Mude o ponto inicial** (`ponto_inicial = QgsPointXY(longitude, latitude)`).
* **Altere os azimutes e distâncias** na lista `azimutes_distancias`.
* **Use um sistema projetado (ex: EPSG:31985 - SIRGAS 2000 UTM 25S)** para cálculos mais precisos em metros.
