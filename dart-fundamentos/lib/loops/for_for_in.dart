void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = <String>['João', 'Guilherme', 'Arthur', 'Rodrigo', 'Bianca'];

  print('Imprimindo números com for convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('Imprimindo números com for-in');
  for (var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com for-in');
  for (var nome in nomes) {
    print(nome);
  }

  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Arthur') {
      break; // Para de executar o loop
    }
  }

  print('Imprimindo nomes com for-in e break');
  for (var nome in nomes) {
    print(nome);
    if (nome == 'Arthur') {
      break;
    }
  }

  print('Imprimindo nomes com for convencional e continue');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue; // Pula o índice 1 (Guilherme) e o índice 3 (Rodrigo)
    }
    print(nomes[i]); // Não apresenta o Guilherme nem o Rodrigo
  }
}
