// Variáveis de nível superior não podem ser inicializadas depois

// Não é permitido
// String nomeCompleto;

String nomeCompletoSuperior = 'João Pedro';
String? nomeCompletoSuperiorOpc;

void main() {
  // Variaveis locais não precisam ser inicializadas de cara
  // porém podem ser criadas sem valor e depois ser atribuído um valor
  String nomeCompleto;
  String? nomeCompletoOpc;
  int a;
  double b;

  nomeCompleto = 'João Pedro';
  print(nomeCompleto.length);

  // Variáveis que não nulas (nullable) por padrão
  // se for atribuído um valor a ela, automaticamente elas são
  // promovidas a não nulo (non-null)
  nomeCompletoOpc = '';
  print(nomeCompletoOpc.length);

  // Variáveis de nível superior NUNCA são promovidas para não nulo (non-null)
  nomeCompletoSuperiorOpc = '';
  // print(nomeCompletoSuperiorOpc.length); -> Erro
}
