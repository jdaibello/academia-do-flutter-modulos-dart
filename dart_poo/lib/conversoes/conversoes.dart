import 'package:dart_poo/conversoes/aluno.dart';
import 'package:dart_poo/conversoes/curso.dart';

void main() {
  var frutas = [
    Fruta('Laranja'),
    Fruta('Maça'),
    Fruta('Abacaxi'),
  ];

  var frutasMap = [
    {'nome': 'Laranja'},
    {'nome': 'Maça'},
    {'nome': 'Abacaxi'},
  ];

  /* List<Suco> sucos = [];
  for (var fruta in frutas) {
    final suco = Suco(sabor: fruta.nome);
    sucos.add(suco);
  } */

  var sucos = frutas.map((fruta) {
    return Suco(sabor: fruta.nome);
  }).toList();

  var sucos2 = frutasMap.map((frutaMap) {
    return Suco(sabor: frutaMap['nome'] ?? 'Sem Sabor');
  });

  print(sucos);
  print(sucos2);

  var alunoAdf = <String, Object>{
    'nome': 'João Pedro',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil'
      },
      {
        'nome': 'Imersão GetX',
        'descricao': 'Melhor curso de imersão em GetX do Brasil'
      },
      {
        'nome': 'Imersão Código Limpo',
        'descricao': 'Curso de imersão em Código Limpo'
      }
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;

  final cursos = cursosMap.map((curso) {
    var nome = curso['nome'] as String;
    var descricao = curso['descricao'] as String;

    return Curso(nome: nome, descricao: descricao);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  final aluno = Aluno(nome: nomeAluno, cursos: cursos);
  print(aluno);
}

class Suco {
  String sabor;

  Suco({required this.sabor});

  @override
  String toString() {
    return 'Suco sabor $sabor';
  }
}

class Fruta {
  String nome;

  Fruta(this.nome);
}
