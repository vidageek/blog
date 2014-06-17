---
layout: post
title: Mockito e mocks
author: Jonas Abreu
---

## TL;DR;
Você pode usar mocks assim com o Mockito e um guia rápido da api do Mockito no fim do post ;)

<hr>

Um dos meus alunos me pediu para escrever um pouco sobre [mocks][1] e [mockito][2], porque aparentemente não existe 
muito material sobre o assunto (em especial mockito) em português.

## Sobre o que é mock

Eu não vou discutir o que é um mock, spy, stub, fake object e etc. Não gosto muito de discutir taxonomia. Nesse post, 
o que vou chamar de mock é bem abrangente: mock é qualquer objeto que você passe (para outro objeto) com o objetivo 
de observar/mudar o comportamento do objeto sendo
testado.

## Mockito

O [mockito][2] é uma biblioteca que ajuda na criação de mocks. Acho a sintaxe dele bem mais agradável do que outros 
projetos, como o [jmock][3]. Mas no fim é questão de gosto. Existem umas 6M bibliotecas de mock em java que fazem 
basicamente a mesma coisa. Vou usar ele nesse post simplesmente porque acho mais agradável :) 

## Exemplo

Vamos modelar um marceneiro. Por quê? Porque sim :)

Se estamos fazendo [TDD][4], começariamos mais ou menos assim (código Java com [jUnit 4][5]):

    // MarceneiroTest.java
    
    @Test
    public void deveSerrarUmaTabua() {
        Marceneiro marceneiro = new Marceneiro();
    }

Quando você escreveu isso, seu código não compila porque não existe a classe marceneiro. Você cria a classe e continua.

    // MarceneiroTest.java
    
    @Test
    public void deveSerrarUmaTabua() {
        Marceneiro marceneiro = new Marceneiro();
        List<Tabua> tabuas = marceneiro.serra(new Tabua());
    }

Novamente seu código não compila. Você cria a classe `Tabua` e o método `serra`:

    // Marceneiro.java
    
    public List<Tabua> serra(Tabua tabua) {
        return new ArrayList<Tabua>();
    }

Seu [infinitest][6] volta a ficar verde. Você volta pro próximo passo do teste:

    // MarceneiroTest.java
    
    @Test
    public void deveSerrarUmaTabua() {
        Marceneiro marceneiro = new Marceneiro();
        
        List<Tabua> tabuas = marceneiro.serra(new Tabua());

        Assert.assertEquals(2, tabuas.size()); 
    }

Seu código parou de compilar. Vou pular a parte da solução mais trivial ir para a discussão de quem é que corta.

## Quem corta a tábua?

Não é o marceneiro. Cortar com os dentes ou unhas ia ser bem difícil. Ele precisa de uma `Serra`. Mas qual tipo? 
[Serrote][7]? [Serra de arco][8]? [Tico-tico][9]? Sei lá. E não faz diferença, desde que seja uma serra e corte tábuas.
Então você cria uma interface `Serra` e modifica o marceneiro para delegar o corte da tábua para ela.

    public interface Serra {
        public List<Tabua> corta(Tabua tabua);
    }

    // Marceneiro.java
    private final Serra serra;

    public Marceneiro(Serra serra) {
        this.serra = serra;
    }

    public List<Tabua> serra(Tabua tabua) {
        return serra.corta(tabua);
    }

E com isso seu teste parou de compilar.

    // MarceneiroTest.java
    private Serra serra;

    @Test
    public void deveSerrarUmaTabua() {
        // precisa passar uma serra
        Marceneiro marceneiro = new Marceneiro(serra); 
        
        List<Tabua> tabuas = marceneiro.serra(new Tabua());

        Assert.assertEquals(2, tabuas.size()); 
    }

E é aqui que o mock te salva. Você não precisa criar uma serra de verdade para continuar o seu teste. Você cria um mock
de Serra e passa. Você pode fazer isso manualmente. Muitas vezes vai ser interessante. Mas o mockito pode facilitar um
pouco e você terá menos classes para manter (porque você não ia usar classes anônimas porque elas são muito feias em 
Java). Então vamos usar ele de uma vez :)

    // MarceneiroTest.java
    import org.mockito.Mockito.*;
    
    @Mock
	private Serra serra;

	@Before
	public void setup() {
		MockitoAnnotations.initMocks(this);
		when(serra.corta(any(Tabua.class)))
          .thenReturn(Arrays.asList(new Tabua(), new Tabua());
	}

    @Test
    public void deveSerrarUmaTabua() {
        Marceneiro marceneiro = new Marceneiro(serra); 
        
        List<Tabua> tabuas = marceneiro.serra(new Tabua());

        Assert.assertEquals(2, tabuas.size()); 
    }

E seu [infinitest][6] fica verde :) Tudo está passando. Vamos entender essa zona toda do @Before e do @Mock.

## Usando Mockito

* `MockitoAnnotations.initMocks(this)`: Simplesmente inicializa com mocks que ainda não sabem fazer nada todos os campos
do seu objeto de teste (no caso, `MarceneiroTest`) anotados com `@Mock`.
* `when(chamada_de_metodo).thenReturn(valor_de_retorno)`: Aqui você começa a ensinar ao seu objeto burro (mock) o que 
ele deve fazer em determinadas situações. O `when` determina qual método você espera que seja chamado no futuro e com
quais parâmetros. Se não faz diferença qual é o exato objeto passado na chamada, você pode usar o matcher `any` para 
dizer exatamente isso. O `thenReturn` diz qual será o valor devolvido quando o método do `when` for chamado. Você pode 
chamar o `when` quantas vezes quiser.

Simples? Não. Mas as alternativas também não são muito boas. Depois de bastante desgaste e sofrimento você acaba 
pegando o jeito. Mas ainda é mais fácil de entender e usar do que qualquer spec de Java ;)

## Como o Mockito funciona

Magia negra. 

Não cabe nesse post. Se quiserem muito saber como funciona, me avisem nos comentários que eu escrevo outro
post explicando (ou peço pro [Lucas][10] ou o [Ferreira][11] explicarem :D )

## Dores com o Mockito (e mocks)

Tirando a sintaxe que te obriga a ler o código de outra forma, existem algumas coisas que precisamos prestar atenção:

* Quando você cria o mock (lembra do `@Mock`?), eu disse que o objeto não sabe fazer nada. Isso não é exatamente verdade.
O objeto é capaz de responder à todos os métodos definidos na interface pública dele. Só que ele devolve valores padrão.
Se o retorno é `int`, ele devolve `0`. Se é `String`, ele devolve `""`, se for qualquer outra coisa que não seja um 
primitivo, ele devolve `null`. E aqui complica. A maioria das interações não esperadas (as que você não colocou o `when`)
vão devolver null. Se esse valor não for usado, tranquilo. Mas se for usado você recebe uma bela `NullPointerException`.
Então se você está escrevendo testes com mockito e tomou uma `NPE`, a maioria das vezes vai ser porque você
esqueceu um `when`.
* No exemplo eu usei o **matcher** `any(class)`. Mas não é obrigatório você usar um matcher. Você pode passar o valor
exato que quer que receba. O problema é que o mockito não permite que você misture matchers com valores, então se precisar
de um matcher, deve passar todos os parâmetros como matchers. Se quiser passar um valor, precisará usar o matcher `eq`.
* Classes final são invulneráveis ao tipo de Magia Negra que o Mockito usa, então você não consegue mocká-las. Se precisar
muito disso, tente o [powermock][13], que se integra com o Mockito.
* O pulo que eu dei de já criar uma interface não é muito saudável. Eu assumi que vai existir mais de um tipo de serra,
o que eu não tenho como garantir. Ou seja, eu fiz design para coisas que podem não existir e esse é um dos caminhos que
levam pro inferno.
* Mocks (não apenas o mockito) mandam pro limbo todas aquelas idéias bonitas sobre baixo acomplamento. Você está escrevendo
um teste completamente acoplado à sua implementação atual do objeto. Refatore ela e os seus testes com mock podem quebrar.
Pior ainda, eles podem continuar passando mas não estar testando mais nada.
* Se você tem que mockar muita coisa para testar, tem algo podre no seu design. Basicamente a regra que uso é: Comecei
a ficar sem paciência de tanto `when` que tenho que colocar, refatoro a classe sendo testada. E minha paciência não
é muito grande quando estou escrevendo testes ;)

## Guia rápido de API do Mockito

Fui procurar a documentação que eu usava e não encontrei. Então resolvi colocar aqui uma explicação rápida dos métodos 
que encontrei referência em meus projetos Java com Mockito (`grep -ri org.mockito workspace`)

* **Matchers**: Assim como o `any(class)`, existem diversos matchers que podem ser usados no lugar dos parâmetros. Todos 
eles se encontram na classe `org.mockito.Matchers`. Recomendo que sempre faça `import static`, porque facilita muito a
leitura dos seus mocks. Alguns exemplos de matchers são:
    * eq(objeto): O parâmetro deve ser igual (equals) ao objeto passado.
    * any(classe): O parâmetro pode ser qualquer objeto da classe passada como parâmetro
    * anyString: O parâmetro pode ser qualquer String
    * anyObject: O parâmetro pode ser qualquer Objeto
    * anyInt: O parâmetro pode ser qualquer int
    * anyBoolean: O parâmetro pode ser qualquer boolean
    * anyLong: O parâmetro pode ser qualquer long
    * anyListOf(classe): O parâmetro deve ser um List de objetos do mesmo tipo da classe passada
    * endsWith(sufixo): O parâmetro deve ser uma String que termine com o sufixo passado
    * contains(substring): O parâmetro deve ser uma String que contenha a substring
    * argThat(matcher): Permite que você use os matchers do [hamcrest][12] como um matcher do Mockito.

* **@Mock**: É a anotação que você coloca em cima dos seus fields para que o `MockitoAnnotations.initMocks(this)`
inicialize os seus mocks.
        @Mock
        private List<String> mock;

        @Before
        public void setup() {
            MockitoAnnotations.initMocks(this);
        }
* **Mockito.mock(classe)**: Se você não quiser usar a inicialização automática de mocks, você pode criá-los manualmente 
com esse método.
        Object mock = Mockito.mock(Object.class);
* **Mockito.when(chamada_de_metodo)**: Como explicado acima, você usa ele para ensinar o seu mock o que ele deve devolver
quando ocorrer uma chamada de método.
        Object mock = Mockito.mock(Object.class);
        when(mock.equals(anyObject()))
            .thenReturn(false);
* **Mockito.doThrow(exception)**: Semelhante ao when, mas você usa quando quer que a invocação do método lance a exceção
**exception**
        Object mock = Mockito.mock(Object.class);
        doThrow(new NullPointerException())
            .when(mock).equals(anyObject());
* **@Mock(answer = Answers.RETURNS_DEEP_STUBS)**: Quando você usa a anotação @Mock, você pode pedir que as chamadas de 
métodos sempre devolvam **Deep Stubs**. Isso significa que nos casos em que o Mockito devolveria null por padrão, agora
ele devolve um mock que você pode usar no when. Apenas lembre-se que Deep Stubs é uma solução desesperada. Se precisou
de Deep Stubs seu design **está ruim**.
        @Mock(answer = Answers.RETURNS_DEEP_STUBS)
        private List<Object> mock;
        ...
        // Essa linha geraria uma NPE sem o configurar os Deep Stubs
        when(mock.get(eq(0)).equals(anyObject()))
            .thenReturn(false);
* **Mockito.verify(mock)**: O verify serve para você garantir que o objeto de testes interagiu com o seu mock (lembra
do que eu falei sobre acoplamento forte com a implementação, esse é o caso).
        Object mock = Mockito.mock(Object.class);

        new HashMap<Object, Object>().put(mock, "asdf");

        verify(mock).hashCode();
* **Mockito.verify(mock, Mockito.never())**: O verify pode receber um segundo parâmetro que determina o número de vezes
que o método foi chamado. No caso do never(), ele vai verificar se o método nunca foi chamado. Caso tenha sido chamado,
o teste falha.
        Object mock = Mockito.mock(Object.class);

        new HashMap<Object, Object>().put(mock, "asdf");

        verify(mock, never()).toString();
* **Mockito.verify(mock, Mockito.atLeast(numero))**: O atLeast faz com que o verify cheque se o método foi chamado pelo
menos **numero** vezes.
        Object mock = Mockito.mock(Object.class);

        new HashMap<Object, Object>().put(mock, "asdf");

        verify(mock, atLeast(1)).hashCode();
* **Mockito.verify(mock, Mockito.atLeastOnce())**: alias para atLeast(1), mas um pouco mais bonitinho.
* **Mockito.verify(mock, Mockito.times(numero))**: Semelhante ao atLeast, mas verifica se o número exato de chamadas
aconteceu.
* **Mockito.verifyZeroInteractions**: Semelhante ao verify, mas para quando você quer garantir que não aconteceu 
nenhuma interação com o mock.
        Object mock = Mockito.mock(Object.class);

        new HashMap<Object, Object>().put(mock, "asdf");

        // vai falhar porque o HashMap chama o método hashCode() do mock.
        verifyZeroInteractions(mock);

## Nota

Nenhum dos códigos acima foi compilado. Provavelmente tem vários erros. Me avisem nos comentários que eu corrijo eles.


[1]: https://en.wikipedia.org/wiki/Mock_object
[2]: https://code.google.com/p/mockito/
[3]: http://jmock.org/
[4]: http://www.amazon.com/Test-Driven-Development-By-Example/dp/0321146530
[5]: http://junit.org/
[6]: http://infinitest.github.io/
[7]: https://pt.wikipedia.org/wiki/Serrote
[8]: https://pt.wikipedia.org/wiki/Serra_de_arco
[9]: https://pt.wikipedia.org/wiki/Serra_tico-tico
[10]: https://twitter.com/lucascs
[11]: https://twitter.com/rafaeldff
[12]: http://hamcrest.org/
[13]: https://code.google.com/p/powermock/
