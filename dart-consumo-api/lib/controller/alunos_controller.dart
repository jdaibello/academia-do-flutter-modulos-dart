import 'package:dart_consumo_api/models/aluno.dart';
import 'package:dart_consumo_api/models/cidade.dart';
import 'package:dart_consumo_api/models/curso.dart';
import 'package:dart_consumo_api/models/endereco.dart';
import 'package:dart_consumo_api/models/telefone.dart';
import 'package:dart_consumo_api/repositories/alunos_repository.dart';

class AlunosController {
  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();
    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);
    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');

    aluno.nomeCursos.add('Imersão Shelf');
    await _alunosRepository.update(aluno);

    final alunoAlterado = await _alunosRepository.findById('1');
    print('${alunoAlterado.nome} tem os cursos: ${alunoAlterado.nomeCursos}');
  }

  Future<void> insert() async {
    final aluno = Aluno(
      nome: 'Rodrigo Rahman',
      nomeCursos: ['Academia do Flutter'],
      telefone: Telefone(ddd: 11, numero: '1234-5678'),
      endereco: Endereco(
        rua: 'Rua x',
        numero: 200,
        cep: '12345-678',
        cidade: Cidade(
          id: 2,
          nome: 'Santo André',
        ),
      ),
      cursos: [
        Curso(
          id: 1,
          nome: 'Academia do Flutter',
          isAluno: true,
        ),
        Curso(
          id: 2,
          nome: 'Imersão GetX',
          isAluno: false,
        ),
      ],
    );

    await _alunosRepository.insert(aluno);
  }
}
