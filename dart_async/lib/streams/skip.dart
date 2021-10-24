Future<void> main() async {
  print('Início');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  // skip - Os dois primeiros valores serão descartados
  stream = stream.take(5).skip(2);

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
