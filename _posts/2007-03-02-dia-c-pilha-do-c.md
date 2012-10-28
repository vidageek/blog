---
author: Jonas Abreu
title: 'Dia C - Pilha do C'

layout: post
category:
  - C
  - Dicas
  - Programacao
  - Tutoriais
tags:
  - C
  - Dicas
  - filo
  - Programacao
  - Tutoriais

---
Provavelmente você ja deve ter ouvido falar de FILO, first in last out (primeiro a entrar é o ultimo a sair). Muitas (talvez todas) linguagens de programação usam uma estrutura FILO para controlar chamadas de funções e alocações de variáveis. Uma estrutura FILO também é chamada de pilha.

Uma pilha basicamente é um vetor e um controle de onde está o topo dessa pilha. No caso da pilha de uma linguagem de programação, como são os parâmetros e as variáveis de funções em execução ou em espera pelo término de uma outra função chamada por ela. Variáveis globais e/ou estáticas também são armazenadas na pilha. Quando uma função é chamada (ou um bloco é aberto), o marcador do topo da pilha é deslocado X bytes para frente, sendo X o espaço para alocar variáveis e/ou parâmetros. Quando a função (ou o bloco) termina, o marcador é deslocado novamente X bytes para trás, liberando o espaço para uma posterior alocação.

Em C, a pilha tem em torno de 8Mb. Isso é muita memória. Então chamadas de funções (a não ser um loop recursivo infinito) dificilmente irão exceder esse limite. Caso exceda, uma Segmentation Fault é lançada.

Apenas para complementar o post sobre VarArgs, agora que você conhece o funcionamento geral do sistema de controle de variáveis e parâmetros, é fácil notar que pelo menos parte da va\_list lida com um ponteiro associado à pilha (por isso é necessário um parâmetro fixo, pois não é possível obter o endereço do local onde estão os parâmetros na pilha). Além disso a va\_list deve cuidar de parâmetros passados por registradores.

Mais informações: Introduction To Algorithms, de Cormem, Leiserson, Rivest e Stein (CLRS) ou pilha -> Google

Próxima sexta: Recursão 



















