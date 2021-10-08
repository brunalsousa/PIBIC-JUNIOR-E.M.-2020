Botao btMove; //<>//
Entrada entValor1, entValor2;
Painel p, painelMovimenta;
Rotulo rotResultado;

class Principal extends IGU {
  
  void acao(Componente c) {
    if (c == btMove) { 
        int novoX = (int)random(10, 400);
        int novoY = (int)random(10, 400);
        
        // Posiciona o "painel" em uma nova posição aleatória
        painelMovimenta.move(novoX, novoY);
    }
  }
}

IGU principal;

void setup() {
  size(1024, 768);

  // A classe Principal, descedente de IGU, é o componente principal que ocupa a área toda da aplicação.
  principal = new Principal();

  p = new Painel(principal, 5, 5, (int)Raiz.largura - 10, (int)Raiz.altura - 10);

  p.fundo(color(238, 130, 238));
  
  painelMovimenta = new PainelMovimenta(p, 100, 120);
  painelMovimenta.fundo(color (240,128,128));
}

class PainelMovimenta extends Painel {
  
  PainelMovimenta(Painel pai, int x, int y) {
    super(pai, x, y, 600, 200);
    // Utiliza-se o campo "this" como pai dos componentes internos ao painel, pois 
    // a intenção da classe PainelMovimenta que suas instâncias tenham componentes dentro dela. 
    btMove = new Botao("Aperte aqui para mover o painel", this, 315, 137, 200, 30);
  }
}

void draw() {
  principal.redesenha();
}
