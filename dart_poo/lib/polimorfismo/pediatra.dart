import 'package:dart_poo/polimorfismo/medico.dart';

class Pediatra extends Medico {
  @override
  void operar() {
    print('Examinar a criança no pós parto');
  }
}
