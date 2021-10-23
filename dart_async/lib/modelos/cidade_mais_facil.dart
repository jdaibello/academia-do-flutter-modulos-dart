import 'dart:convert';

// toMap, fromMap, toJson e fromJson criados pelo plugin
// Dart Data Class Generator
class CidadeMaisFcil {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ddd;

  CidadeMaisFcil({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  factory CidadeMaisFcil.fromMap(Map<String, dynamic> map) {
    return CidadeMaisFcil(
      cep: map['cep'],
      logradouro: map['logradouro'],
      complemento: map['complemento'],
      bairro: map['bairro'],
      localidade: map['localidade'],
      uf: map['uf'],
      ddd: map['ddd'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CidadeMaisFcil.fromJson(String source) =>
      CidadeMaisFcil.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CidadeMaisFcil(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
