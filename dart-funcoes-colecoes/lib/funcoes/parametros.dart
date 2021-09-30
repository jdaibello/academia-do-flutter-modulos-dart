void main() {
  // Parâmetros obrigatórios por default
  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

  // Parâmetros nomeados
  // Parâmetros nomeados são nullables por default
  // Parâmetros nomeados podem ser promovidos para non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');
  print('A soma de 10.5 + 10.5 é ${somaDoubles(numero2: 10.5, numero1: 10.5)}');

  somaDoublesObrigatorios(numero1: 10.5, numero2: 12);
  somaDoublesObrigatorios2(numero1: null, numero2: 5);

  print('Chamada com parâmetros default ${somaDoublesDefault()}');
  print('Chamada com parâmetros default ${somaDoublesDefault(numero1: 10)}');

  // Parâmetro opcional
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 1); // Precisa seguir a ordem dos parâmetros

  parametrosNormaisComNomeados(1, nome: 'João', idade: 30);
  parametrosNormaisComNomeados2(1, 'João Pedro');
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0.0;
}

double somaDoublesObrigatorios({
  required double numero1,
  required double numero2,
}) {
  return numero1 + numero2;
}

double somaDoublesObrigatorios2({
  required double? numero1,
  required double numero2,
}) {
  numero1 ??= 0;
  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(
  int numero, {
  required String nome,
  required int idade,
}) {}

void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
