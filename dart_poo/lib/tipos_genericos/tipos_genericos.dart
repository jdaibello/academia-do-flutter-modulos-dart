void main() {
  List<int> numeros = [1, 2, 3];
  numeros.add(2);

  Map<String, int> mapa = {};

  //* Com o tipo genérico <Bola>, o compilador ajuda no autocomplete do código
  final caixaBola = Caixa<Bola>();

  //* O método adicionar espera um objeto da classe Bola
  caixaBola.adicionar(Bola());
  Bola? itemBola = caixaBola.getItem();
  print(caixaBola.alturaDoItem());

  final caixaVideoGame = Caixa<VideoGame>();
  caixaVideoGame.adicionar(VideoGame());
  VideoGame? itemVideoGame = caixaVideoGame.getItem();
  print(caixaVideoGame.alturaDoItem());

  //! Computador não é um Item
  //! final caixaComputador = Caixa<Computador>();
}

//! Sem genéricos, a classe fica engessada, com várias duplicações
/* class Caixa {
  List<dynamic> items = [];

  void adicionarBola(Bola bola) {
    items.add(bola);
  }

  void adicionarVideoGame(VideoGame videoGame) {
    items.add(videoGame);
  }

  List<dynamic> getItems() {
    return items;
  }
} */

//* Exemplo com genéricos
class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaDoItem() {
    return _item?.altura() ?? 0;
  }
}

abstract class Item {
  double altura();
}

class Bola extends Item {
  @override
  double altura() {
    return 15.0;
  }
}

class VideoGame extends Item {
  @override
  double altura() {
    return 50.0;
  }
}

class Telefone extends Item {
  @override
  double altura() {
    return 20.0;
  }
}

class Computador {}
