void main() {
  // O mapa é uma representação de chave e valor
  final paciente = <String, String>{
    'nome': 'João Pedro',
    'curso': 'Academia do Flutter',
  };

  // O mapa pode ser nulo, mas se for criado deve conter a chave
  // e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;

  // O mapa e o valor não podem ser nulos, mas a chave pode ser nula
  var pacienteNullSafety2 = <String?, String>{
    null: 'João',
  };

  // O mapa e a chave não podem ser nulos, mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  var produtos = <String, String>{};
  // Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  produtos.putIfAbsent('nome', () => 'Suco');
  print(produtos); // {nome: Refrigerante}

  produtos.update('nome', (value) => 'Suco');

  // Erro. Chave não existe
  //! produtos.update('nome2', (value) => 'Refrigerante');
  print(produtos); // {nome: Suco}

  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor
  print('Produto ${produtos['nome']}');
  print('Preço ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  // Fazer algum processo assíncrono dentro dele
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  for (var value in produtos.values) {
    print('Chave: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry('novo_' + key, value.toUpperCase());
  });
  print(novoMapaProdutos); // {novo_nome: SUCO, preco: 10}

  var mapa = <String, Object>{
    'nome': 'João Pedro',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!',
      },
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!'
      },
    ],
  };
}
