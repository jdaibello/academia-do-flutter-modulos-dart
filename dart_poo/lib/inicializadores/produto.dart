class Produto {
  final int _id;
  final String nome;
  final double _preco;

  // Produto(this.id, this.nome, this.preco);

  //! All final variables must be initialized, but '_id' and '_preco' aren't.
  //! Try adding initializers for the fields.
  /* Produto({
    required int? id,
    required String this.nome,
    required double? preco,
  }) {
    _id = id; //! '_id' can't be used as a setter because it's final.
    _preco = preco; //! '_preco' can't be used as a setter because it's final.
  } */

  //* Para inicializar algum atributo e deve ser feito no momento
  //* da inicialização da classe, como no caso dos atributos finais
  Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id,
        _preco = preco {
    //* Inicialização
    //* : _id = id,
    //*   _preco = preco
    print(_id);
    print(_preco);
  }

  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto(id: id, nome: nome, preco: preco);
  }
}
