# Aula de PyQGIS

### **1. Introdução ao PyQGIS**

* **O que é PyQGIS?**\
  PyQGIS é a biblioteca Python integrada ao QGIS que permite automação, personalização e extensão das funcionalidades do QGIS.
* **Por que usar PyQGIS?**\
  Para otimizar tarefas repetitivas, criar ferramentas personalizadas, manipular dados geográficos e integrar o QGIS a outros sistemas.

***

### **2. Pré-requisitos**

* **Instalação do QGIS**\
  Baixe e instale o QGIS (versão LTR preferencial).\
  [Baixar QGIS](https://qgis.org)
* **Python no QGIS**\
  Verifique a instalação do Python no QGIS acessando o terminal Python no próprio QGIS.
* **Editor de Código**\
  Recomenda-se usar editores como VSCode, PyCharm ou o próprio editor do QGIS.

***

### **3. Primeiros Passos no PyQGIS**

#### **3.1. Acessar o Console Python do QGIS**

1. Abra o QGIS.
2. Vá até o menu **Complementos** → **Console Python**.

#### **3.2. Executando Comandos Básicos**

```python
# Exemplo: Exibir a versão do QGIS
from qgis.core import Qgis
print(f"Você está usando o QGIS versão {Qgis.QGIS_VERSION}.")
```
