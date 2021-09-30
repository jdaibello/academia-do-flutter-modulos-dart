void main() {
  String nomeCompleto = 'João';
  print(nomeCompleto);
  nomeCompleto = 'João Pedro';
  print(nomeCompleto);

  // Variáveis Final:
  // Não podem ser alteradas depois de inicializadas (imutáveis)
  // São definidas do programa em tempo de execução (runtime)
  // Utilize sem moderação
  final nomeCompletoFinal = 'João Pedro';
  final nomeCompletoFinal2 = nomeCompleto;
  // final String nomeCompletoFinal = 'João Pedro';

  // nomeCompletoFinal = 'João'; -> Erro

  // Variáveis Const:
  // Não podem ser alteradas depois de inicializadas (imutáveis)
  // São definidas no programa em tempo de COMPILAÇÃO!!!!!
  // Não podem receber valores de outras variáveis a não ser que
  // essas variáveis feram const também
  // Utilize sem moderação
  const nomeCompletoConst = 'João Pedro';
  const nomeCompletoConst2 = nomeCompletoConst;
  // const nomeCompletoConst3 = nomeCompleto; -> Erro
}
