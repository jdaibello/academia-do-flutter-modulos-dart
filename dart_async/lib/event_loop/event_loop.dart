import 'dart:async';

void main() {
  print('Início Main');
  scheduleMicrotask(() => print('Microtask #1'));

  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));

  scheduleMicrotask(() => print('Microtask #2'));
  print('Fim Main');
}

/**
 * Event
 * Future #1 delayed - Iniciar
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
    Fim Main
    Microtask #1
    Microtask #2
    Future #2
    Future #3
    Future #1 delayed
*/
