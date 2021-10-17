import 'package:dart_poo/equals_hashcode/pessoa.dart';

void main() {
  var nome = 'João';
  var nome2 = 'João';

  if (nome == nome2) {
    print('É igual'); // -> printa isso
  } else {
    print('Não é igual');
  }

  /**
   * 1 - p1 = Pessoa()
   * 2 - p2 = Pessoa()
  */

  var p1 = Pessoa(
    nome: 'Rodrigo',
    email: 'rodrigorahman@academiadoflutter.com',
    telefone: '11223344',
  );

  var p2 = Pessoa(
    nome: 'Rodrigo',
    email: 'rodrigorahman@academiadoflutter.com',
    telefone: '11223344',
  );

  print(p1.hashCode);
  print(p2.hashCode);

  print(p1);

  if (p1 == p2) {
    print('É igual'); // -> printa isso
  } else {
    print('Não é igual');
  }
}
