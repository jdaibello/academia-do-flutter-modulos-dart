import 'package:dart_poo/polimorfismo/anestesista.dart';

class ResidenteAnestesista extends Anestesista {
  // Sobrescrita de métodos
  @override
  void operar() {
    // Faz tudo o que o Anestesista tem que fazer
    super.operar();

    print('Limpar e desmontar os equipamentos');
  }
}
