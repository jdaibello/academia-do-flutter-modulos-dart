import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'complemento': complemento,
      'cidade': cidade.toMap(),
    };
  }

  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? 0,
      cep: map['CEP'] ?? '',
      complemento: map['complemento'],
      cidade: Cidade.fromMap(map['cidade']),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));
}
