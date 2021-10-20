import 'package:dart_poo/modificadores/pessoa.dart';

void main() {
  var p1 = const Pessoa(nome: 'João', idade: 37);
  var p2 = const Pessoa(nome: 'João', idade: 37);
  var p3 = const Pessoa(nome: 'João', idade: 39);

  print(p1 == p2); // -> true
  print(p1 == p2 && p2 == p3); // -> false
}

/*
  1 - p1 = Pessoa(...)
  2 - p2 = Pessoa(...)

  1 - p1 = const Pessoa(...)
  2 - p2 = p1
*/