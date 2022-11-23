import 'dart:convert';

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
}
