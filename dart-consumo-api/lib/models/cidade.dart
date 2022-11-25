import 'dart:convert';

class Cidade {
  final int id;
  final String nome;

  Cidade({required this.id, required this.nome});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: map['id'],
      nome: map['nome'],
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));
}
