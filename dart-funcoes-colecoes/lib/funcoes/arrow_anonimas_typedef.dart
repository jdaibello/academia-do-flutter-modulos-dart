void main() {
  // Funções Arrow
  print(somaInteiros(10, 10));

  // Funções Anônimas
  () {
    print('Função Anônima');
  }();

  var nome = '';
  var idade = 1;
  var funcaoQualquer = () {
    print('Chamou a função da variável');
    return '2000';
  };

  print(funcaoQualquer());

  print('Iniciando chamada');
  // Funções podem ser chamadas por parâmetro
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');

  funx2((nome, nomeCompleto, {qq, x, x2}) => 'João');
}

// Funções
// 3 partes
// 1 - Tipo de retorno
// 2 - Nome
// 3 - Parâmetros (normais, nomeados e opcionais)

// Funções arrow
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'João Pedro';
  print('Finalizando a função chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro1(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'João Pedro';
  print('Finalizando a função chamarUmaFuncaoDeUmParametro');
  print('Invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void funx(
    String Function(
  String nome,
  String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
})
        nome) {}

void funx2(FuncaoQueRecebeNomeComplexo nome) {}

// Typedef
// Criar alias (apelido) de função.
typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
  String nome,
  String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
});
