// Isso aqui é uma classe abstrata
// pois tem métodos implementados!!!
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

// Isso aqui é uma interface
// pois não tem nenhum método implementado!!!
abstract class Carro {
  // Para tornar portas, rodas e motor obrigatórios para que
  // quem for implementar tenha esses atributos disponíveis
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima();
}
