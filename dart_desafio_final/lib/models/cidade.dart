import 'dart:convert';

class Cidade {
  final int id;
  final int idUf;
  final String nome;

  Cidade({
    required this.id,
    required this.idUf,
    required this.nome,
  });

  Cidade copyWith({
    int? id,
    int? idUf,
    String? nome,
  }) {
    return Cidade(
      id: id ?? this.id,
      idUf: idUf ?? this.idUf,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'id_uf': idUf,
      'nome': nome,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      id: int.parse(map['id']),
      idUf: map['id_uf'] ?? 35,
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));

  @override
  String toString() => 'Cidade(id: $id, id_uf: $idUf, nome: $nome)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cidade &&
        other.id == id &&
        other.idUf == idUf &&
        other.nome == nome;
  }

  @override
  int get hashCode => id.hashCode ^ idUf.hashCode ^ nome.hashCode;
}
