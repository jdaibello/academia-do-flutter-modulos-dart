void main() {
  final diaDaSemana = 1;
  final idade = 19;
  var diaDaSemanaStr = '';

  // if (diaDaSemana == 0) {
  //   diaDaSemanaStr = 'Domingo';
  // } else if (diaDaSemana == 1) {
  //   diaDaSemanaStr = 'Segunda-feira';
  // } else {
  //   diaDaSemanaStr = 'Não encontrado';
  // }

  // switch só funciona para variáveis inteiras ou strings
  switch (diaDaSemana) {
    case 0:
      diaDaSemanaStr = 'Domingo';
      break;
    case 1:
      diaDaSemanaStr = 'Segunda-feira';
      break;
    default:
      diaDaSemanaStr = 'Não encontrado';
      break;
  }

  print(diaDaSemanaStr);

  switch (idade) {
    case 18:
    case 19:
      print('Maior de idade');
      break;
    default:
      print('Menor de idade');
      break;
  }
}
