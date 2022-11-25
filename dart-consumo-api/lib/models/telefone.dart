import 'dart:convert';

class Telefone {
  final int ddd;
  final String numero;

  Telefone({required this.ddd, required this.numero});

  // É um método que pega o objeto (Telefone) e transforma em um Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'numero': numero,
    };
  }

  // É um CONSTRUTOR, ele vai pegar um MAP e transformar em um objeto Telefone
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'] ?? 0,
      numero: map['numero'] ?? '',
    );
  }

  // É um método que retorno uma string JSON do objeto Telefone
  String toJson() => jsonEncode(toMap());

  // É um método que baseado em uma string JSON retorna um objeto Telefone
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  // factory Telefone.fromJson(String json) {
  //   Map<String, dynamic> jsonMap = jsonDecode(json);
  //   return Telefone.fromMap(jsonMap);
  // }
}
