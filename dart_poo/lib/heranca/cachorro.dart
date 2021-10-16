import 'package:dart_poo/heranca/animal.dart';

// classe Cachorro herda da classe Animal
class Cachorro extends Animal {
  Cachorro({required int idade}) : super(idade: idade);

  @override
  int calcularIdadeHumana() {
    return idade * 7;
  }
}
