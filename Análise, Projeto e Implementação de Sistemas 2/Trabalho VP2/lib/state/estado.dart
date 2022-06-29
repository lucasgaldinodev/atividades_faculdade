import 'package:colorize/colorize.dart';

// Classe responsável pelo Estado de cada item
// a função do Estado nesse projeto é colorir
// de forma diferente o texto de acordo com a
// propriedade "estaHabilitado" que cada item tem
abstract class Estado {
  colorir(texto, estaHabilitado) {
    if (estaHabilitado) {
      // Aqui o texto é colorido de azul
      // caso a variável seja True
      final nomeColorido = Colorize(texto);
      return nomeColorido.blue().toString();
    } else {
      // Aqui o texto é colorido de vermelho
      // caso a variável seja False
      final nomeColorido = Colorize(texto);
      return nomeColorido.red().toString();
    }
  }
}
