void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);
  numeros.add(1);
  print(numeros);
  //                0       1         2           3
  final nomes = ['João', 'Maria', 'Rodrigo', 'Fernanda'];
  print(nomes);
  //           4
  nomes.add('Luana');
  //               5          6          7
  nomes.addAll(['João 2', 'Luana 2', 'Maria 2']);
  print(nomes);
  print(nomes[1]); // Acessando pelo índice (index)
  print('Adicionando José a lista');
  nomes.insert(0, 'José');
  nomes.insert(3, 'José 3');
  print(nomes);
  print(nomes[0]); // 0 - José, 1 - João, 2 - Maria, etc...

  nomes.remove('José 3');
  print(nomes);

  nomes.removeWhere((nome) {
    print('Nome procurado $nome');
    if (nome == 'Rodrigo') {
      print('$nome removido da lista!');
      return true;
    } else {
      return false;
    }
  });
  print(nomes);
  print(nomes.length);

  // print(nomes[0]); <- substituir isso
  print(nomes.first);
  // print(nomes[nomes.length - 1]); <- substituir isso
  print(nomes.last);

  print('Buscando primeiro nome');

  // Encontrou o primeiro item, para de buscar
  var primeiroNome = nomes.firstWhere((nome) {
    print(nome);
    if (nome == 'Maria') {
      return true;
    } else {
      return false;
    }
  });
  print(primeiroNome);

  final numerosGerados = List.generate(10, (index) => index + 1); // Gera lista de 1 a 10
  print(numerosGerados);

  final stringsGerados = List.generate(10, (index) => 'Índice ${index + 1}');
  print(stringsGerados);

  final repeticoes = List.filled(10, 'João'); // Gera uma lista com 10 'João's
  print(repeticoes);

  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);
  // 1 ... 100
  // 0 + 1 = 1
  // 1 + 2 = 3
  // 3 + 3 = 6
  // 6 + 4 = 10
  // etc ...
  var soma = numerosGeradosParaCalculo.fold<int>(0, (previousValue, numero) => previousValue + numero); // Similar ao reduce (Javascript)
  print(soma);

  // Spread operator (...)
  var listaNumerosSpreadB = [4, 5, 6];

  // Coloca todos os itens da listaNumerosSpreadB na listNumerosSpread, similar ao addAll
  var listaNumerosSpread = [1, 2, 3, ...listaNumerosSpreadB];
  print(listaNumerosSpread);

  // Collection if
  var promocaoAtiva = true;

  // Coloca suco de larança somente se promocaoAtiva é igual a true
  var produtos = ['Água com gás', 'Refrigerante', if (promocaoAtiva) 'Suco de laranja'];
  print(produtos);

  // Collection for
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', '#01', for (var i in listaInts) '#$i'];

  print(listaStrings); // #0, #01, #1, #2, #3
  var string = listaStrings.join('->');
  print(string); // Gera uma string com os elementos da listaString separados por ->

  //* Explorar outros métodos
}
