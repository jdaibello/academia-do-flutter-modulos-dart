void main() {
  // Operadores lógicos
  // &&(E), ||(OU), !(NÃO)

  final sexo = 'M';
  final idade = 17;

  // TRUE e TRUE
  if (sexo == 'M' && idade >= 18 && sexo != 'F') {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // Operador || uma das condições precisam ser verdade
  // TRUE && FALSE = TRUE
  // TRUE && TRUE = TRUE
  // FALSE && TRUE = TRUE
  if (sexo == 'M' || idade >= 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // ((TRUE && FALSE) == FALSE) == TRUE
  if (!(sexo == 'M' && idade >= 18)) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }
}
