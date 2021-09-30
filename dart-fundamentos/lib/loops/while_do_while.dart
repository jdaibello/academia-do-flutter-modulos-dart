void main() {
  //       inicio       condição     incremento
  // for (var i = 0; i < nomes.length; i++)

  // While
  var numero = 0;

  print('While convencional');
  while (numero < 10) {
    print(numero);
    numero++;
  }

  // While
  print('While');
  var indice = 0;
  print('While não será executado!!!!');
  while (indice > 0) {
    print(numero);
    indice++;
  }

  // Vai executar pelo menos uma vez
  print('Do While');
  do {
    print(indice);
    indice++;
  } while (indice < 10);
}
