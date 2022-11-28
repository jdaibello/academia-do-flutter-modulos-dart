import 'dart:convert';

import 'package:dart_consumo_api/controller/alunos_controller.dart';
import 'package:dart_consumo_api/models/telefone.dart';

Future<void> main() async {
  await AlunosController().findAll();
  await AlunosController().findById('1');
  await AlunosController().update();
  await AlunosController().insert();
  await AlunosController().findById('4c30c330-6f59-11ed-b9da-0be8c15ddad7');
}

void main2() {
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
