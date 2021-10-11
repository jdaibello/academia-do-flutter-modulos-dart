void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  print('\t\tRELATÓRIO\n');
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('Pessoas:');

  final pessoasSet = pessoas.toSet().map((p) => p.split('|')).toList();
  for (var pessoa in pessoasSet) {
    print(pessoa[0]);
  }

  print('\n');
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final mapSexo = <String, List<String>>{};
  for (var pessoa in pessoasSet) {
    final sexo = pessoa[2].toLowerCase();
    final listaHomens = mapSexo['M'] ?? <String>[];
    final listaMulheres = mapSexo['F'] ?? <String>[];

    if (sexo == 'masculino') {
      listaHomens.add(pessoa[0]);
    } else {
      listaMulheres.add(pessoa[0]);
    }

    mapSexo['M'] = listaHomens;
    mapSexo['F'] = listaMulheres;
  }

  final homens = mapSexo['M'] ?? <String>[];
  final mulheres = mapSexo['F'] ?? <String>[];

  print('Quantidade de Homens: ${homens.length}');
  homens.forEach(print);
  print('\n');

  print('Quantidade de Mulheres: ${mulheres.length}');
  mulheres.forEach(print);
  print('\n');
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('Pessoas maiores de 18 anos:');

  final pessoasMaioresDe18Anos = pessoasSet.where((p) {
    final idade = int.tryParse(p[1]) ?? 0;
    return idade > 18;
  }).toList();

  for (var pessoa in pessoasMaioresDe18Anos) {
    print(pessoa[0]);
  }

  print('\n');
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  final listaOrdenadaPessoas = [...pessoasSet];

  listaOrdenadaPessoas.sort((pessoa1, pessoa2) {
    final idadePessoa1 = int.tryParse(pessoa1[1]) ?? 0;
    final idadePessoa2 = int.tryParse(pessoa2[1]) ?? 0;
    return idadePessoa2.compareTo(idadePessoa1);
  });

  final pessoaMaisVelha = listaOrdenadaPessoas.first;
  print('Pessoa mais velha (${pessoaMaisVelha[1]} anos):');
  print(pessoaMaisVelha[0]);
}
