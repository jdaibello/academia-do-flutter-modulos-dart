import 'package:dart_poo/heranca/cachorro.dart';
import 'package:dart_poo/heranca/gato.dart';

void main() {
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';
  print('''
    Cachorro:
      Tamanho: ${cachorro.tamanho}
      Idade: ${cachorro.idade}
      Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');

  var gato = Gato(idade: 2);
  gato.tamanho = 'Médio';
  print('''
    Gato:
      Tamanho: ${gato.tamanho}
      Idade: ${gato.idade}
      Idade Humana: ${gato.calcularIdadeHumana()}
  ''');
}
