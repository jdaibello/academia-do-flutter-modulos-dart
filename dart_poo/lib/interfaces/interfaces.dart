import 'package:dart_poo/interfaces/carro.dart';
import 'package:dart_poo/interfaces/gol.dart';
import 'package:dart_poo/interfaces/uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);

  print(gol.tipoDeRodas());
}

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Máxima: ${carro.velocidadeMaxima()}
  ''');
}
