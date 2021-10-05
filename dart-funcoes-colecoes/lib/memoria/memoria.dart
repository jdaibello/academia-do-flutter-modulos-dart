void main() {
  var lista = ['João'];
  print(lista.hashCode);

  print(lista);
  funcao(lista);
  print(lista);

  String nome = 'João Pedro';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);

  var list = ['João'];
  print(list);
  add(list);
  print(list);

  var listaProdutos = ['Prod'];
  print(listaProdutos);
  var valor = calculaCarrinho(listaProdutos);
  print(valor);
  print(listaProdutos);
}

int calculaCarrinho(List<String> produtos) {
  produtos.clear();
  return 10;
}

void funcao2(String nome) {
  nome += ' Academia do Flutter';
  print(nome);
  print(nome.hashCode); // Outro hash code
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  nomes.add('Pedro');
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('João Pedro');
  print(novoNomes);
  return novoNomes;
}
