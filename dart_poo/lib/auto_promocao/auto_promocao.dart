import 'package:dart_poo/interfaces/carro.dart';
import 'package:dart_poo/interfaces/gol.dart';
import 'package:dart_poo/interfaces/uno.dart';

// Variáveis de nível superior e atributos de classe
// não são auto promovidas para o tipo checado

Carro golCarro2 = Gol();

void main() {
  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  // Jeito certo
  // Quando checamos se a variável é (is) de um tipo
  // caso ela seja o dart vai automaticamente converter
  // essa instância para a classe do Tipo!!!
  if (golCarro is Gol) {
    golCarro.tipoDeRodas();
  }

  // Erro
  //! if (golCarro2 is Gol) {
  //!   golCarro2.tipoDeRodas();
  //! }

  if (golCarro2 is Gol) {
    (golCarro2 as Gol).tipoDeRodas();
  }

  // Jeito errado
  //                 se (uno as Gol) vai dar erro de execução
  // var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
  // print('Tipo de Rodas: $tipoDeRodas');

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
      Tipo de Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}
