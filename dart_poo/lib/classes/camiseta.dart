// Modificadores de acesso
// Público - public
// Privado - private
// Protegido - protected -> Dart não tem

// Características
// Comportamentos
class Camiseta {
  // Atributos

  // Atributo de classe
  static const String nome = 'Camiseta';

  // Atributos de instância
  String? tamanho;
  String? _cor; // Atributo privado
  String? marca;

  // Métodos

  // Método de classe
  static String recuperarNome() => nome;

  // get
  String? get cor => _cor;

  // set
  set cor(String? cor) {
    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
  }

  // Método de instância
  String tipoDeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na máquina';
    } else {
      return 'Pode lavar na máquina';
    }
  }
}

class _Camiseta2 {
  void recuperarCor() {
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }
}
