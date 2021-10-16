import 'package:dart_poo/heranca_covariant/fruta.dart';

abstract class Mamifero {
  //         pode implementar e colocar o que quiser,
  //         desde que seja filhos(as) da classe Fruta
  void comer(covariant Fruta fruta);
}
