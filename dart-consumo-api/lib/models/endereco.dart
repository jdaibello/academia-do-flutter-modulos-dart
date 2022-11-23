import 'package:dart_consumo_api/models/cidade.dart';

class Endereco {
  final String rua;
  final int numero;
  final String cep;
  final String? complemento;
  final Cidade cidade;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    this.complemento,
  });
}
