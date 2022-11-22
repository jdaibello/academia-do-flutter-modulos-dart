class Curso {
  final String nome;
  final String descricao;

  Curso({
    required this.nome,
    required this.descricao,
  });

  @override
  String toString() => 'Curso(nome: $nome, descricao: $descricao)';
}
