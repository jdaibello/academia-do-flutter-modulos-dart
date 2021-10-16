import 'package:dart_poo/polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('Preparar e esterilizar os equipamentos');
    print('Anestesiar a paciente');
  }
}
