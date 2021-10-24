import 'package:dart_banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

  await mysqlConnection.query(
    'INSERT INTO aluno(id, nome) VALUES(?, ?)',
    [null, 'João Pedro 5'],
  );

  var resultoSelect = await mysqlConnection.query('SELECT * FROM aluno');

  resultoSelect.forEach((row) {
    print('Resultado por índice');
    print(row[0]);
    print(row[1]);

    print('Resultado pelo nome da coluna');
    print(row['id']);
    print(row['nome']);
  });

  await mysqlConnection.query(
    'UPDATE aluno SET nome = ? WHERE id = ?',
    ['Academia do Flutter', 1],
  );

  var resultadoSelectUnico = await mysqlConnection.query(
    'SELECT * FROM aluno WHERE id = ?',
    [1],
  );
  print('Parâmetro único');

  if (resultadoSelectUnico.isNotEmpty) {
    var rowUnico = resultadoSelectUnico.first;

    print('Resultado por índice');
    print(rowUnico[0]);
    print(rowUnico[1]);

    print('Resultado pelo nome da coluna');
    print(rowUnico['id']);
    print(rowUnico['nome']);
  }

  try {
    await mysqlConnection.query(
      'UPDATE aluno SET nome = ? WHERE id = ?',
      [1, 'Academia do Flutter'],
    );
  } on MySqlException catch (e) {
    print(e);
    print('Erro ao atualizar dados do aluno');
  }
}
