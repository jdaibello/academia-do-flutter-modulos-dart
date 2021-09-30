void main() {
  // Operadores relacionais
  // Temos 6 tipos
  // == (Igualdade), != (Diferença), > (Maior que), < (Menor que), <= (Menor Igual), >= (Maior Igual)

  final idade = 18;
  final tipoPet = 'Cachorro';

  // Regra de negócio para tirar habilitação
  if (idade == 18) {
    print('Pode tirar habilitação');
  }

  if (idade > 17) {
    print('Pode tirar habilitação');
  }

  if (idade >= 18) {
    print('Pode tirar habilitação');
  }

  if (tipoPet != 'Gato') {
    print('Desculpe, mas não temos nada para seu pet');
  }
}
