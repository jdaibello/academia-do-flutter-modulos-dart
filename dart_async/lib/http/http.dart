import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
  // await buscarCEP();
  // await buscarCEPErro();
  // await buscarPosts();
  // await salvarPost();
  await atualizarPost();
}

Future<void> buscarCEP() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  }
}

Future<void> buscarCEPErro() async {
  var url = 'https://viacep.com.br/ws/999999/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = jsonDecode(response.body);
    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
  } else {
    print('Ocorreu um problema: Mensagem ${response.reasonPhrase}');
  }
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = jsonDecode(response.body);
    if (responseData is List) {
      for (var data in responseData) {
        print(data['id']);
      }
    }
  }
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descrição do post',
    'userId': 1
  };

  var response = await http.post(
    Uri.parse(url),
    body: jsonEncode(mapaRequest),
  );

  print(response.statusCode);
  print(response.body);
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var mapaRequest = {
    'id': 1,
    'title': 'Post alterado',
    'body': 'Descrição do post',
    'userId': 1
  };

  var response = await http.put(
    Uri.parse(url),
    body: jsonEncode(mapaRequest),
    headers: {
      'Content-type': 'application/json; charset=UTF-8',
    },
  );

  print(response.statusCode);
  print(response.body);
}
