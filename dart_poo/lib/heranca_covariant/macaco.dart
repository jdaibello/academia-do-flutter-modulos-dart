import 'package:dart_poo/heranca_covariant/banana.dart';
import 'package:dart_poo/heranca_covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
