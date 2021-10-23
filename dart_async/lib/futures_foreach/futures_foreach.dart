Future<void> main() async {
  var nomes = ['João', 'Rodrigo', 'Luana', 'Guilherme'];

  print('Início');

  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });

  for (var nome in nomes) {
    print(await saudacao(nome));
  }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  var nomesFuturoNaMao = [saudacao('João'), saudacao('Rodrigo')];
  print(saudacoes);

  var saudacoesNaMao = await Future.wait(nomesFuturoNaMao);
  print(saudacoesNaMao);

  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Início $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim $nome');
    return 'Olá, $nome';
  });
}
