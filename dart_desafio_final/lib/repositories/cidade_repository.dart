import 'dart:convert';

import 'package:dart_desafio_final/models/cidade.dart';
import 'package:http/http.dart' as http;

class CidadeRepository {
  Future<List<Cidade?>> buscarCidades() async {
    var url =
        "https://servicodados.ibge.gov.br/api/v1/localidades/estados/35/distritos";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var cidades = (jsonDecode(response.body) as List)
          .map((cidade) => Cidade.fromMap(cidade))
          .toList();

      return cidades;
    } else {
      throw Exception();
    }
  }
}
