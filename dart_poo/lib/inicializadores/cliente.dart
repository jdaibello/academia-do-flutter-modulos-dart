class Cliente {
  // Atributo que vai ser inicializado depois
  late final String nome;
  int? idade;

  Cliente({required String nome});

  Cliente.comNome({required String nome}) {
    nome = nome;
  }
}
