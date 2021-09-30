void main() {
  var numeros = List.generate(10, (index) => index);

  // for (var i = 0; i < numeros.length; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }

  //* Não implementar quando for fazer alguma coisa/requisição assíncrona
  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  // Take while -> Faça até que
  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7) // Faça até que numero < 7
      .where((numero) => numero != 5) // Remove o número 5
      .toList(); // Retorna uma lista

  print(numeros[1]); // Lista
  print(numerosAte6); // Lista

  final numerosRemoverAte5 = numeros
      .skipWhile((numero) => numero < 6) // Remove o elemento até que número < 6
      .toList(); // Retorna uma lista. Sem o toList, retorna um iterable
  print(numerosRemoverAte5);

  var nomes = <String>['João', 'Guilherme', 'Arthur', 'Rodrigo', 'Bianca'];

  // Eliminou os nomes anteriores ao de Arthur
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Arthur') {
      return true;
      // O true é mantido após achar o nome Arthur
    } else {
      // antes, o false é executado
      return false;
    }
  }).toList();
  print(nomesSkip);

  // Map transforma uma lista em outra

  // Transformou uma lista de inteiros em lista de strings
  var numeroStrList = numeros.map((numero) {
    return 'Número é $numero';
  }).toList();
  print(numeroStrList);

  // Transformou uma lista para somar cada número com 10
  var numeroList = numeros.map((numero) {
    return numero + 10;
  }).toList();
  print(numeroList);

  // Inverteu a lista de números
  final numerosRevertidos = numeros.reversed.toList();
  print(numerosRevertidos);

  // Inverteu a lista de nomes
  final nomesRevertidos = nomes.reversed.toList();
  print(nomesRevertidos);
}
