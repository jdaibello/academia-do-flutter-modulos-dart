import 'dart:convert';

class Estado {
  final int id;
  final String uf;
  final String nome;

  Estado({
    required this.id,
    required this.uf,
    required this.nome,
  });

  Estado copyWith({
    int? id,
    String? uf,
    String? nome,
  }) {
    return Estado(
      id: id ?? this.id,
      uf: uf ?? this.uf,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sigla': uf,
      'nome': nome,
    };
  }

  factory Estado.fromMap(Map<String, dynamic> map) {
    return Estado(
      id: map['id'],
      uf: map['sigla'],
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Estado.fromJson(String source) => Estado.fromMap(json.decode(source));

  @override
  String toString() => 'Estado(id: $id, sigla: $uf, nome: $nome)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Estado &&
        other.id == id &&
        other.uf == uf &&
        other.nome == nome;
  }

  @override
  int get hashCode => id.hashCode ^ uf.hashCode ^ nome.hashCode;
}
