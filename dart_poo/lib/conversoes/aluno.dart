import 'package:dart_poo/conversoes/curso.dart';

class Aluno {
  final String nome;
  final List<Curso> cursos;

  Aluno({
    required this.nome,
    required this.cursos,
  });

  @override
  String toString() => 'Aluno(nome: $nome, cursos: $cursos)';
}
