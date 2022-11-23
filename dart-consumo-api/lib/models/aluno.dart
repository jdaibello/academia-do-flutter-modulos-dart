import 'package:dart_consumo_api/models/curso.dart';
import 'package:dart_consumo_api/models/endereco.dart';
import 'package:dart_consumo_api/models/telefone.dart';

class Aluno {
  final String id;
  final String nome;
  final int idade;
  final List<String> nomeCursos;
  final Telefone telefone;
  final Endereco endereco;
  final List<Curso> cursos;

  Aluno({
    required this.id,
    required this.nome,
    required this.idade,
    required this.nomeCursos,
    required this.telefone,
    required this.endereco,
    required this.cursos,
  });
}
