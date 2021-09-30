void main() {
  final idade = 30;
  print('Sua idade é $idade');

  final valor = -20;

  if (valor.isNegative) {
    print('O valor é negativo');
  }

  final valorDouble = 10.65;

  print(valorDouble.round()); // Arredonda para int
  print(valorDouble.roundToDouble()); // Arredonda para double

  final valorCerto = '30';
  final valorErrado = 'João';

  //* double também tem as funções parse e tryParse
  //               double.parse(30.49);
  //               double.tryParse(99.99);
  final valorInt = int.parse(valorCerto);
  // Se valorInt = int.parse(valorErrado);
  // causa uma exceção
  final valorInt2 = int.tryParse(valorErrado);
  // tryParse transforma o valorErrado em int? se não for possível converter
  // valorInt2 = null
  print(valorInt);

  if (valorInt2 != null) {
    print(valorInt2 + 2); // Esse print não será mostrado
  }

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2)); // 30.28
}
