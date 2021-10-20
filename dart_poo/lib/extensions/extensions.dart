import 'package:dart_poo/extensions/pessoa.dart';
import 'package:dart_poo/extensions/pessoa_saudacao_extension.dart';
import 'package:dart_poo/extensions/saudacao_string_extension.dart';

void main() {
  var nome = 'João Pedro';
  print(nome.saudacao());

  var p1 = Pessoa(nome: 'Rodrigo');
  print(p1.saudacao());
}
