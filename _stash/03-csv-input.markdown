---
layout: post
title: Kettle CSV Input
author: Jonas Abreu
category: kettle
permalink: /pentaho/csv-input
---

Um componente bem simples de usar do [Kettle][1] é o `CSV input`, que permite que você carregue arquivos .csv 
para a sua transformação.

### Principais Parâmetros

* **Step Name:** Nome do passo. Deve ser único na transformação inteira
* **Filename:** Caminho absoluto para o arquivo `csv` que deseja ler
* **Header row present?:** Muito útil para `csv`s como trazem os nomes das colunas na primeira linha, como:
        
        cep
        69960000
        69932000
        69934000
        69935000
        69900970
        69923000
        69925000
        69970000
        69940000

* **Get fields:** O CSV Input é inteligente o suficiente para encontrar os nomes dos campos do `csv` se eles estiverem 
na primeira coluna. Para determinar o tipo (String, Integer, etc) de cada coluna, ele vai analisar algumas das linhas do 
csv. Em geral é bom dar uma olhada nos tipos inferidos, porque muitas vezes eles não batem com o que você gostaria.


[1]: /pentaho/kettle.html
