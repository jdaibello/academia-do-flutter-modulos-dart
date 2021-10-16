import 'package:dart_poo/heranca_covariant/banana.dart';
import 'package:dart_poo/heranca_covariant/fruta.dart';
import 'package:dart_poo/heranca_covariant/humano.dart';
import 'package:dart_poo/heranca_covariant/macaco.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}
