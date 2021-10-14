class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // construtor default
  // todas as classes tem automaticamente
  // Pessoa();

  /* Pessoa({
    required String nomeConstruct,
    required int idadeConstruct,
    required String sexoConstruct,
  }) {
    nome = nomeConstruct;
    idade = idadeConstruct;
    sexo = sexoConstruct;
  } */

  // construtor default
  Pessoa({required this.nome, required this.idade, required this.sexo});

  // construtores nomeados
  Pessoa.semNome({required this.idade, required this.sexo});

  Pessoa.vazia();

  // construtor factory
  // É utilizado para definir alguma regra de negócio
  // para criação da nossa classe!!!
  factory Pessoa.fabrica(String nomeConstrutor) {
    var nome = nomeConstrutor + '_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
