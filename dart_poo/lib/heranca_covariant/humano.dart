import 'package:dart_poo/heranca_covariant/fruta.dart';
import 'package:dart_poo/heranca_covariant/mamifero.dart';

class Humano extends Mamifero {
  @override
  void comer(Fruta fruta) {}
}
