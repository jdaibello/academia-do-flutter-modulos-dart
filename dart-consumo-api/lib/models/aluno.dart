import 'dart:convert';

import 'package:dart_consumo_api/models/curso.dart';
import 'package:dart_consumo_api/models/endereco.dart';
import 'package:dart_consumo_api/models/telefone.dart';

class Aluno {
  final String id;
  final String nome;
  final int? idade;
  final List<String> nomeCursos;
  final Telefone telefone;
  final Endereco endereco;
  final List<Curso> cursos;

  Aluno({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.telefone,
    required this.endereco,
    required this.cursos,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'nomeCursos': nomeCursos,
      'telefone': telefone.toMap(),
      'endereco': endereco.toMap(),
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      idade: map['idade'],
      nomeCursos: map['nomeCursos'],
      telefone: Telefone.fromMap(map['telefone']),
      endereco: Endereco.fromMap(map['endereco']),
      cursos: map['cursos']
          .map<Curso>((cursoMap) => Curso.fromMap(cursoMap))
          .toList(),
    );
  }

  String toJson() => jsonEncode(toMap());

  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));
}
