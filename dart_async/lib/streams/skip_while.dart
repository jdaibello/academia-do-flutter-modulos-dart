Future<void> main() async {
  print('Início');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  // Descarta os valores enquanto eles forem menores que 5
  stream = stream.take(5).skipWhile((numero) {
    print('Número que chegou na stream: $numero');
    return numero < 5;
  });

  // await for
  await for (var i in stream) {
    print('O número que chegou no await for é $i');
  }

  print('Fim');
}

int callback(int value) {
  print('Callback - Valor que chegou é $value');
  return (value + 1) * 2;
}
