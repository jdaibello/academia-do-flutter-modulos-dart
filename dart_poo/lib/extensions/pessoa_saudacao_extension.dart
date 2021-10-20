import 'package:dart_poo/extensions/pessoa.dart';

extension PessoaSaudacaoExtension on Pessoa {
  String saudacao() {
    return 'Olá, $nome. Bem vindo à Academia do Flutter';
  }
}
