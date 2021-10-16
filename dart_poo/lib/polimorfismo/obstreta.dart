import 'package:dart_poo/polimorfismo/medico.dart';

class Obstreta extends Medico {
  @override
  void operar() {
    print('Preparar a paciente');
    print('Nascimento do bebê');
  }
}
