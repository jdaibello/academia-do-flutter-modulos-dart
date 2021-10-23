import 'dart:async';

Future<void> main() async {
  print('Início Main');
  scheduleMicrotask(() => print('Microtask #1'));

  await Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  await Future(() => print('Future #2'));
  await Future(() => print('Future #3'));

  scheduleMicrotask(() => print('Microtask #2'));
  print('Fim Main');
}

/**
 * Event
 * Future #1 delayed - Executou
 * Future #2 - Executou
 * Future #3 - Executou
 */

/**
 * Microtask
 * Main - OK
 * Microtask #1 - OK
 * Microtask #2 - OK
 */

/*
  Saída
    Início Main
    Microtask #1
    Future #1 delayed
    Future #2
    Future #3
    Fim Main
    Microtask #2
*/
