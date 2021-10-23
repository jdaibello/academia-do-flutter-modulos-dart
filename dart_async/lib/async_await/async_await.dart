Future<void> main() async {
  print('Início do main');

  try {
    var mensagem = await processo1();
    print(mensagem);

    var mensagem2 = await processo2();
    print(mensagem2);

    await processo3();
  } on Exception catch (err) {
    print('Erro na chamada do P3');
  }

  print('Fim do main');
}

Future<String> processo1() {
  print('Início do P1');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do P1');
}

Future<String> processo2() {
  print('Início do P2');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do P2');
}

Future<String> processo3() {
  print('Início do P3');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
