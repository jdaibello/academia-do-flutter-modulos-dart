void main() {
  // ? = Nullable (aceita nulo)
  // Sem nada (padrão) = non-null (Não aceita nulo)

  // Não aceita nulo
  var nomes = <String>[];

  // Aceita nulo
  List<String>? nomesNulos;

  // Lista não pode ser nula nem os itens podem ser nulos
  List<String> nomesInternosNaoAceitaNulos = ['João'];
  var nomesInternosNaoAceitaNulos1 = ['João']; // Forma correta

  //! Dessa forma isso não funciona!!!
  //var nomesInternosNaoAceitaNulos2 = <String>[null];

  // Lista não pode ser nula mas os itens internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['João', null, 'Pedro', null];

  // Forma correta
  var nomesInternosAceitaNulos1 = <String?>['João', null, 'Pedro', null];

  // Lista pode ser nula e os itens também podem ser nulos
  List<String?>? nomesInternosAceitaNulos2 = null;
}
