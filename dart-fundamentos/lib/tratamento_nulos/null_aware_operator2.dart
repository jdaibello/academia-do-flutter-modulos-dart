String? nome;

void main() {
  var sobrenome = ' Pedro';
  // var nomeCompleto = ((nome != null) ? nome! + ' Pedro' : 'João Pedro');
  var nomeCompleto = (nome ?? 'João') + sobrenome; // Null aware operator.
  // se nome for diferente de null, 'João' é atribuido. Senão, o valor do nome.

  print(nomeCompleto);
}
