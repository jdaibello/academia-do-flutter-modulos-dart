import 'package:dart_banco_dados/database.dart';

Future<void> main() async {
  var database = Database();
  var conn = await database.openConnection();

  await conn.transaction((_) async {
    var result = await conn.query('SELECT * FROM conta_corrente');
    var saldo = result.first['saldo'] as double;
    var saque = 100.0;

    var saldoFinal = saldo - saque;

    if (saldoFinal < 0) {
      throw Exception();
    }

    await conn.query(
      'UPDATE conta_corrente SET saldo = ? WHERE id = ?',
      [saldo - saque, 1],
    );

    await conn.query(
      'INSERT INTO tira_dinheiro(id, data_saque) VALUES(?, ?)',
      [null, DateTime.now().toIso8601String()],
    );
  });

  var result = await conn.query('SELECT * FROM conta_corrente');
  print('Meu saldo é: ${result.first['saldo']}');
}
