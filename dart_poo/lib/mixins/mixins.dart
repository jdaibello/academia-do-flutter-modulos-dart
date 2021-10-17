import 'package:dart_poo/mixins/rodrigo.dart';

//* Mixin -> herança múltipla
void main() {
  // Rodrigo é um Artista
  // Rodrigo é um Cantar
  // Rodrigo é um Dancar
  var rodrigo = Rodrigo();

  // print(rodrigo.habilidade()); -> Cantar

  print('''
    Rodrigo
      Habilidade: ${rodrigo.habilidade()}
      Cantar: ${rodrigo.cantar()}
      Dancar: ${rodrigo.dancar()}
  ''');
}
