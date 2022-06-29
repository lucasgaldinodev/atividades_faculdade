import '../state/estado.dart';

// Classe base dos itens do trabalho
// Ela herda do Estado
abstract class Item extends Estado {
  final String nome;
  final bool estaHabilitado;

  Item(
    this.nome,
    this.estaHabilitado,
  );

  // Função responsável por imprimir o texto
  // do item na tela
  void imprimir(simbolo) {
    print(simbolo + colorir(nome, estaHabilitado));
  }
}
