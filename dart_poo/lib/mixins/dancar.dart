import 'package:dart_poo/mixins/artista.dart';

mixin Dancar on Artista {
  String dancar() {
    return 'Dança Forró';
  }

  @override
  String habilidade() {
    return 'Dançar';
  }
}
