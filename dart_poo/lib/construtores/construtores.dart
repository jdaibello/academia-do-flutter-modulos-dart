import 'package:dart_poo/construtores/pessoa.dart';

void main() {
  var pessoa = Pessoa(nome: 'João Pedro', idade: 30, sexo: 'Masculino');
  print(pessoa.nome);

  // Construtor nomeado
  var pessoaNomeado = Pessoa.semNome(idade: 30, sexo: 'Masculino');
  print(pessoaNomeado.idade);

  var pessoaFabrica = Pessoa.fabrica('João Pedro');
  print(pessoaFabrica.nome); // -> João Pedro_Fabrica
}
