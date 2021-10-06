IGU principal;
Painel p;
PainelCalculadora painelCalculadora;

void setup() {
  size(800, 1000);

  //principal = new IGU();
  principal = new IGU(900, 675);

  p = new Painel(principal, 5, 5, (int)Raiz.largura - 10, (int)Raiz.altura - 10);
  p.fundo(color(238, 130, 238));

  painelCalculadora = new PainelCalculadora();
  painelCalculadora.fundo(color (240, 128, 128));
}

class PainelCalculadora extends Dialogo {
  Entrada entValor1, entValor2;
  Rotulo rotResultado;
  PainelEstados pEstados;

  PainelCalculadora() {
    super ("Operações Aritméticas");
    // String opcoes é um vetor que armazena as possíveis opções de sinais das quatro aperações aritméticas. 
    String opcoes[] = {"+", "-", "*", "/"};
    //O Painel PainelEstados pEstados é o espaço onde os quatro botões da calculadora serão exibidos, declarados no vetor opcoes.
    pEstados = new PainelEstados(opcoes, this, 200, 50);

    entValor1 = new Entrada("Primeiro valor", this, 50, 93, 100, 20);
    entValor2 = new Entrada("Segundo valor", this, 305, 93, 100, 20);

    rotResultado = new Rotulo("=", this, 480, 88, 100, 30);
    //visivel(true) torna o Painel p e tudo que há nele visíveis.
    visivel(true);
  }

  //O tratamento de exceções pode estar dentro da classe do componente, como aqui que está no classe PainelCalculadora
  void acao(Componente c) {
    String valor1 = entValor1.texto();
    String valor2 = entValor2.texto();
    float num1 = float (valor1);
    float num2 = float (valor2);

    float resultado = 0;
    //O comando if irá comparar se o componente c, recebido como parâmetro, se trata de pEstados.
    //Caso a comparação seja verdadeira, é atribuído, a PainelEstados pe, o componente c.
    if (c.pai == pEstados) {;
      PainelEstados pe = (PainelEstados)c.pai;
      //No comando switch, o conteúdo do botão selecionado é comparado com os possíveis resultados (os quatro sinais das operações matemáticas).
      //Caso a comparação seja verdadeira, a operação aritmética é executada e o comando break causa uma interrupção imediata do laço,
      //continuando a execução do programa na próxima linha após o mesmo.
      switch (pe.selecionado().texto) {
        case "+":
        resultado = num1 + num2;
        break;
        case "-":
        resultado = num1 - num2;
        break;
        case "*":
        resultado = num1 * num2;
        break;
        case "/":
        resultado = num1 / num2;
        break;
      }
      rotResultado.texto("=" + str (resultado));
    }
  }
}

void draw() {
  principal.redesenha();
}
