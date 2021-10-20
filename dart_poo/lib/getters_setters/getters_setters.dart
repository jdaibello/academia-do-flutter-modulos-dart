void main() {
  var pessoa = Pessoa();
  pessoa.nome = 'João Pedro';
  print(pessoa.nome);
}

class Pessoa {
  String? _nome;

  //* Usar getters e setters somente quando houver regra(s) de negócio
  String? get nome => _nome;
  // set nome(String? nome) => _nome = nome;
  set nome(String? nome) {
    if (nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
}
