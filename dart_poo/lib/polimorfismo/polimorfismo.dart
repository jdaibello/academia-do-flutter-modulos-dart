import 'package:dart_poo/polimorfismo/medico.dart';
import 'package:dart_poo/polimorfismo/obstreta.dart';
import 'package:dart_poo/polimorfismo/pediatra.dart';
import 'package:dart_poo/polimorfismo/residente_anestesista.dart';

void main() {
  // Parto

  var medicos = <Medico>[
    ResidenteAnestesista(),
    Obstreta(),
    Pediatra(),
  ];

  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
