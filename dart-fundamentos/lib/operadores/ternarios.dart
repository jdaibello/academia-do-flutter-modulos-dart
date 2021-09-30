void main() {
  final idade = 12;

  if (idade >= 18) {
    print('Maior de idade');
  } else {
    print('Menor de idade');
  }

  // (condição) ? faça algo : faça outra coisa
  final eMaiorDeIdade = idade >= 18 ? true : false;

  print('É maior de idade? ' + eMaiorDeIdade.toString());

  // Cuidado ao utilizar o operador ternário
  // as vezes pode ficar muito complexo
  // Utilize com moderação
  print((idade < 13)
      ? 'Criança'
      : (idade > 12 && idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  final ano = 2024;
  print((ano % 4 == 0 || ano % 400 == 0 || ano % 100 != 0) ? 'Bisexto' : 'Não é bixesto');
}
