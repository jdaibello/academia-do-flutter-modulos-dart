import 'package:dart_poo/classes/camiseta.dart';

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  print('''
  Camiseta:
    Tamanho: ${camisetaNike.tamanho}
    Cor: ${camisetaNike.cor}
    Marca: ${camisetaNike.marca}
    TipoDeLavagem: ${camisetaNike.tipoDeLavagem()}
  ''');

  var camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'GG';
  camisetaAdidas.cor = 'Branca';
  camisetaAdidas.marca = 'Adidas';

  print(Camiseta.nome);
  print(Camiseta.recuperarNome());

  print('''
  Camiseta:
    Tamanho: ${camisetaAdidas.tamanho}
    Cor: ${camisetaAdidas.cor}
    Marca: ${camisetaAdidas.marca}
    TipoDeLavagem: ${camisetaAdidas.tipoDeLavagem()}
  ''');
}
