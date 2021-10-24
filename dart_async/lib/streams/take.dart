Future<void> main() async {
  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // Limita a stream à 5 requisições. Depois disso,
  // o take corta a stream e a encerra
  stream = stream.take(5);

  // await for
  await for (var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
