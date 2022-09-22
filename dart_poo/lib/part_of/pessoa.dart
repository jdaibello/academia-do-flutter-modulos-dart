//* Sempre depois dos imports
part 'cpf.dart';
part 'endereco.dart';
part 'telefone.dart';

class Pessoa {
  String? nome;

  // Composição
  // Quando um atributo de associação é obrigatório
  // Nós estamos falando de composição!!!
  _Endereco endereco = _Endereco();
  _CPF cpf = _CPF();

  // Agregação
  // Quando um atributo de associação não é obrigatório
  // Nós estamos falando ce agregação!!!
  _Telefone? telefone;
}
