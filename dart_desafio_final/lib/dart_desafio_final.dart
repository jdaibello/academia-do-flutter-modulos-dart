import 'package:dart_desafio_final/database.dart';
import 'package:dart_desafio_final/repositories/cidade_repository.dart';
import 'package:dart_desafio_final/repositories/estado_repository.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

  await cadastrarEstados(mysqlConnection);
  await cadastrarCidades(mysqlConnection);
}

Future<void> cadastrarEstados(MySqlConnection connection) async {
  var estadoRepository = EstadoRepository();

  try {
    var estados = await estadoRepository.buscarEstados();
    for (var estado in estados) {
      await connection.query('INSERT INTO estado(id, uf, nome) VALUES(?, ?, ?)',
          [estado?.id, estado?.uf, estado?.nome]);

      print('Estado adicionado: ${estado?.nome}');
    }

    print('Todos os estados foram inseridos com sucesso');
  } on MySqlException {
    print('Erro ao cadastrar estados no banco de dados');
  } on Exception {
    print("Erro ao buscar lista de estado");
  }
}

Future<void> cadastrarCidades(MySqlConnection connection) async {
  var cidadeRepository = CidadeRepository();

  try {
    var cidades = await cidadeRepository.buscarCidades();
    for (var cidade in cidades) {
      await connection.query(
          'INSERT INTO cidade(id, id_uf, nome) VALUES(?, ?, ?)',
          [null, 35, cidade?.nome]);

      print("Cidade adicionada: ${cidade?.nome}");
    }

    print('Todas as cidades foram inseridas com sucesso');
  } on MySqlException catch (e) {
    print('Erro ao cadastrar cidades no banco de dados. $e');
  } on Exception {
    print("Erro ao buscar lista de estado");
  } finally {
    await connection.close();
  }
}
