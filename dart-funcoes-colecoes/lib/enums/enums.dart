void main() {
  // const cor = 'vermelho';
  const cor = Cores.vermelha;

  // if (cor == 'vermelho') {}
  if (cor == Cores.vermelha) {}

  //* Enums help autocomplete switch-case structure
  /* switch (cor) {
    case Cores.azul:
      break;
    case Cores.vermelha:
      break;
    case Cores.laranja:
      break;
    case Cores.verde:
      break;
    case Cores.preta:
      break;
  } */

  var azul = 'azul';

  //* Transformando a string azul em um enum Cores.azul
  //* Antes da versão 2.15
  print(Cores.azul); //! -> Cores.azul
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul); //! -> (Cores.azul)

  //* Na versão 2.15 e adiante
  print(Cores.azul.name); //* -> azul
  var corAzul215 = Cores.values.byName(azul);
  print(corAzul215); //* -> (Cores.azul)

  //* Antes da versão 2.15
  var coresMap = Cores.values.asMap();
  print(coresMap); // -> {0: Cores.azul, 1: Cores.vermelho, ...}

  //* Na versão 2.15 e adiante
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap); // -> {azul: Cores.azul, vermelho: Cores.vermelho, ...}

  var corAzulPeloMap = coresNameMap[azul];
  print(corAzulPeloMap); // -> Cores.azul

  //! Throws Unhandled exception:
  //! Invalid argument (name): No enum value with that name: "branco"
  Cores.values.byName('branca');

  var corBranca = coresNameMap['branca'];
  print(corBranca); // -> null
}

enum Cores {
  azul,
  vermelha,
  laranja,
  verde,
  preta,
}
