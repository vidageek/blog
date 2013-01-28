---
author: Jonas Abreu
title: 'YACP - Variáveis e Tipos Primitivos'
layout: post

---
### **Variáveis**

Em C, uma variável pode ser visto de forma semelhante a que é vista em matemática. Ela é um lugar para você colocar valores. A diferença é que é um conceito mais restrito. Cada variável possui um tipo e apenas valores desse tipo podem ser colocados dentro da variável. A variável também possui limitações. Por exemplo, você não pode colocar um número real dentro de uma variável inteira. Se você fizer isso, o compilador poderá gerar um aviso, erro ou fará algum malabarismo para conseguir colocar dentro da variável. No caso, ele pegará apenas a arte inteira do número real.  
Além disso, as variáveis possuem um valor máximo e mínimo que pode ser colocado dentro delas. Qualquer valor entre esses dois extremos (inclusive) pode ser atribuído (colocado) a variável. Um valor fora desse limites geralmente irá produzir resultados estranhos, como uma multiplicação entre dois números positivos gerando um número negativo.

### **Tipos Primitivos**

C possui diversos tipos de variável que já vem definidos e que você pode usar para compor outros. Esses são os tipos primitivos. 

Aqui vai uma tabela com os principais tipos primitivos e seus valores máximos e mínimos:<table border=1> 

</table> 
Além dos tipos primitivos, existem modificadores para o tamanho desses tipos:<table border=1> 

</table> 
### **Usando Variáveis**

Em C, para se utilizar uma variável, é necessário declará-la antes. Para isso, você deve também indicar de qual tipo que ela seja. A sintaxe é basicamente:

tipo nome\_da\_variavel;

Alguns exemplos:

int i;  
long long inteiro\_bem\_longo;  
float pontoFlutuante;  
double pontoFlutuante2;  
long double CaSeSeNsItIvE;  
short int podemosUsarVariosCaracteresNoNomeDaVariavel;

Em C, nomes (de qualquer coisa) podem possuir muitos caracteres (não pude encontrar um valor máximo, mas meus testes mostraram que até 10765 caracteres funciona), desde que não sejam começados por números (podem possuir números a partir do segundo caractere, mesmo que seja entre caracteres) ou operadores. Também não é permitido dar nomes iguais, mesmo que seja para coisas diferentes. 



















