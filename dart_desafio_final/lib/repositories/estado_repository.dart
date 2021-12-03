import 'dart:convert';

import 'package:dart_desafio_final/models/estado.dart';
import 'package:http/http.dart' as http;

class EstadoRepository {
  Future<List<Estado?>> buscarEstados() async {
    var url = "https://servicodados.ibge.gov.br/api/v1/localidades/estados";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var estados = (jsonDecode(response.body) as List)
          .map((estado) => Estado.fromMap(estado))
          .toList();

      return estados;
    } else {
      throw Exception();
    }
  }
}
