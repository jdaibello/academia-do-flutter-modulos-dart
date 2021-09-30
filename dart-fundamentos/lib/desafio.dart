void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  // Definição das variáveis
  var listaProfissoes = <String?>[];
  var listaEstados = <String?>[];

  //! Baseado no array acima monte um relatório onde:
  print('\t\tRELATÓRIO\n');
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  var listaNomesIdadeMaiorQue20 = <String>[];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    listaProfissoes.add(dadosPaciente[2]); // Preenchendo lista para exercício 2
    listaEstados.add(dadosPaciente[3]); // Preenchendo lista para exercício 3
    if (int.parse(dadosPaciente[1]) > 20) {
      listaNomesIdadeMaiorQue20.add(dadosPaciente[0]);
    }
  }

  print('Nome dos pacientes com mais de 20 anos:');
  listaNomesIdadeMaiorQue20.forEach(print); // Imprime cada elemento da lista

  print('\n'); // Quebra de linha
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  var listaDesenvolvedores = <String>[];
  var listaEstudantes = <String>[];
  var listaDentistas = <String>[];
  var listaJornalistas = <String>[];

  for (var profissao in listaProfissoes) {
    switch (profissao?.toUpperCase()) {
      case 'DESENVOLVEDOR':
        listaDesenvolvedores.add(profissao!);
        break;
      case 'ESTUDANTE':
        listaEstudantes.add(profissao!);
        break;
      case 'DENTISTA':
        listaDentistas.add(profissao!);
        break;
      case 'JORNALISTA':
        listaJornalistas.add(profissao!);
        break;
    }
  }

  print('Número de pacientes desenvolvedores: ${listaDesenvolvedores.length}');
  print('Número de pacientes estudantes: ${listaEstudantes.length}');
  print('Número de pacientes dentistas: ${listaDentistas.length}');
  print('Número de pacientes jornalistas: ${listaJornalistas.length}');

  print('\n');
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  listaEstados.removeWhere((sigla) => sigla != 'SP' ? true : false);
  print('Quantidade de pacientes que moram em SP: ${listaEstados.length}');
}
