import 'package:colorize/colorize.dart';

class Visitor {
  visitar() {
    final texto = '- - Menu visitado - -';
    final textoColorido = Colorize(texto);
    print(textoColorido.green());
  }
}
