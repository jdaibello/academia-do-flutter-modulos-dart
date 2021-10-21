void main() {
  print('Início do P1');
  processo2();

  // 2 status (Incompleto, Concluído (Com valor, Com erro))
  // Concluído com valor -> then
  // Concluídco com erro -> catchError ou onError
  // whenComplete -> sempre será executado!!!

  processo3().then((mensagem) {
    print(mensagem);
  });

  processo4()
      .then((mensagem) => print('Mensagem do P4: $mensagem'))
      .catchError((erro) => print('Erro ao executar o P4'))
      .whenComplete(() => print('Finalizou com erro'));

  processo4().then((mensagem) => print('Mensagem do P4: $mensagem'),
      onError: (erro) {
    print('Tratando o erro pelo onError do then');
  });

  processo3()
      .then((mensagem) => print(mensagem))
      .whenComplete(() => print('Finalizou com sucesso'));
}

Future<void> processo2() async {
  print('Início do P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}

Future<String> processo3() {
  print('Início do P3');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do P3');
}

Future<String> processo4() {
  print('Início do P4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
