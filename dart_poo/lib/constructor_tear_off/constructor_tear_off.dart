void main() {
  final nomes = ['Rodrigo', 'Guilherme', 'Aline', 'João'];

  final pessoasAntigo = nomes.map((nome) => Pessoa(nome)).toList();

  //* A partir da versão 2.15 do Dart
  // final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList();
  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  for (var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);
}

/*                  dynamic
                    Object
                    void
*/
void funcaoQualquer(Pessoa Function(String) funcao) {
  funcao('João');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome) {
    return Pessoa.nome(nome);
  }
}
