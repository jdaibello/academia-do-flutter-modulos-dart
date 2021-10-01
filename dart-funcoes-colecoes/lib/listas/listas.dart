void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.forEach(printAcademia);

  // Expand
  // Array Bidimencional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  //              junta os elementos da lista
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // any
  print('.any');
  final listaBusca = ['João', 'José', 'Rodrigo'];

  //  busca se tem algum João na lista
  if (listaBusca.any((nome) => nome == 'João')) {
    print('Tem João');
  } else {
    print('Não tem João');
  }

  // every
  print('.every');
  final listaBusca2 = ['João', 'José', 'Rodrigo'];

  //  vê se todos os itens contêm a letra J
  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem a letra J');
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  // sort
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 0, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['João', 'José', 'Rodrigo', 'Carlos', 'Bianca'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'João Pedro|37',
    'Rodrigo Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50',
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });

  // [Arthur|5, Guilherme|18, Rodrigo Rahman|35, João Pedro|37, Antonio|50]
  print(novaListaPacientes);
  print(listaPacientes);

  // compareTo
  print('.sort com compareTo');
  var listaPacientes2 = [
    'João Pedro|37',
    'Rodrigo Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50',
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    //                    faz comparação de valores
    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(listaPacientes2);
  // [Arthur|5, Guilherme|18, Rodrigo Rahman|35, João Pedro|37, Antonio|50]

  // Pacientes por função
  var listaPacientes3 = [
    'João Pedro|37',
    'Rodrigo Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50',
  ];

  print('Antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);
}

void printAcademia(Object valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  final localPacientes = [...pacientes];

  localPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);
}
