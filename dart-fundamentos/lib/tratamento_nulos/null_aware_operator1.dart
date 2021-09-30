String? nome;

void main() {
  var nomeCompleto = ((nome != null) ? nome! + ' Pedro' : 'João Pedro');
  print(nomeCompleto);

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + 'Pedro';
  } else {
    nomeCompleto2 = 'João Pedro';
  }

  print(nomeCompleto2);

  var nomeLocal = nome;

  if (nomeLocal == null) {
    nomeLocal = 'João';
  }

  var nomeCompleto3 = nomeLocal + ' Pedro';

  print(nomeCompleto3);
}
