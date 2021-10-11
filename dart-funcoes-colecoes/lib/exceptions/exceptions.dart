void main() {
  var idade = '38';
  String? nome;

  try {
    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();

    if (idadeParse == 38) {
      throw Exception();
    }
    print('fim');
  } on FormatException catch (e, s) {
    //print(e);
    print(s);
    //print('Erro ao converter idade');
  } on TypeError {
    print('Erro ao acessar o nome');
  } on Exception {
    print('Erro idade == 38');
  } catch (e) {
    print('Erro ao executar programa');
  } finally {
    print('finally');
  }
}
