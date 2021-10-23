import 'dart:io';

Future<void> main() async {
  var file = File('lib/files/file.txt');

  // Leitura Síncrona
  // var fileData = file.readAsStringSync();
  // print(fileData);

  // Leitura Assíncrona
  // var fileData = await file.readAsString();
  // print(fileData);

  // Leitura Linha Síncrona
  // var fileLista = file.readAsLinesSync();
  // print(fileLista[2]);

  // Leitura Linha Assíncrona
  // var fileLista = await file.readAsLines();
  // print(fileLista[2]);

  // var file2 = File('lib/files/file2.txt');
  // await file2.writeAsString('Academia do Flutter\n', mode: FileMode.append);
  // file2.writeAsStringSync('Academia do Flutter\n', mode: FileMode.append);

  var listaNomes = ['João Pedro', 'Rodrigo Rahman', 'Luana'];
  var file3 = File('lib/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);

  listaNomes.forEach((nome) => writeFile.write('$nome\n'));
}
