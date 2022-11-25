import 'dart:convert';

import 'package:dart_consumo_api/models/telefone.dart';

void main() {
  final cidadeJson =
      '''
      [
        {
          "id": 1,
          "nome": "São Paulo",
          "regiao": {
            "nome": "Sudeste"
          }
        },
        {
          "id": 2,
          "nome": "Fortaleza",
          "regiao": {
            "nome": "Nordeste"
          }
        }
      ]
      ''';

  //* [] => List
  //* {} => Map<String, dynamic>

  final cidadeMap = json.decode(cidadeJson);

  if (cidadeMap is List) {
    print('É uma lista');
  } else if (cidadeMap is Map) {
    print('É um map');
  }

  print(cidadeMap.runtimeType);
  cidadeMap.forEach((cidade) => print(cidade['regiao']['nome']));
  print(cidadeMap[0].runtimeType);

  final cidadeMapJson = {'id': 123, 'nome': 'Santo André', 'uf': 'SP'};

  // [{"id":123,"nome":"Santo André","uf":"SP"}]
  print(json.encode([cidadeMapJson]));

  final telefoneJson =
      '''
        {
          "ddd": 11,
          "numero": "1234-5678"
        }
      ''';

  final telefone = Telefone.fromJson(telefoneJson);

  print(telefone.ddd);
  print(telefone.numero);

  print(telefone.toJson());
  print(telefone.toMap());
}
