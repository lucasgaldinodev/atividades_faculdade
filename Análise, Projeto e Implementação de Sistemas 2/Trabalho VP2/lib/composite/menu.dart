import 'item.dart';
import '../visitor/visitor.dart';

// Classe Menu, que herda de Item
// A diferença dessa Classe para a Classe Funcionalidade
// é a questão da Lista de filhos que Menu pode ter
class Menu extends Item {
  List<Item>? filhos = [];

  Menu(
    String nome,
    bool estaHabilitado,
  ) : super(nome, estaHabilitado);

  // Função responsável por adicionar Filhos dentro do Menu
  void adicionarFilho(Item filho) {
    filhos!.add(filho);
  }

  // Função que faz a impressão do Menu na tela
  // O simbolo é o separador utilizado para fazer
  // a identação dos itens na tela
  @override
  void imprimir(simbolo) {
    simbolo = '';
    print(simbolo + colorir(nome, estaHabilitado));
    for (var filho in filhos!) {
      filho.imprimir(simbolo + '- ');
    }
  }

  void aceitarVisita(Visitor visitor, simbolo) {
    imprimir(simbolo);
    visitor.visitar();
  }
}
