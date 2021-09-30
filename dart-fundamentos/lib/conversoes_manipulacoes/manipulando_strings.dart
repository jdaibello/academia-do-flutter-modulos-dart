void main() {
  final nome = 'João Pedro';

  var subStringNome = nome.substring(5);
  print(subStringNome); // Imprime Pedro

  var subStringNome2 = nome.substring(0, 4);
  print(subStringNome2); // Imprime João

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  print(sexoSigla);

  if (sexoSigla == 'M') {
    print('If com comparador. Olá, seu sexo é Masculino');
  }

  if (sexo.startsWith('Mas')) {
    print('If com startsWith. Olá, seu sexo é Masculino');
  }

  if (sexo.toLowerCase().startsWith('mas')) {
    print('If com toLowerCase e startsWith. Olá, seu sexo é masculino');
  }

  if (nome.toUpperCase().contains('PEDRO')) {
    print('É da família Pedro');
  }

  // Interpolação

  var primeiroNome = 'João';
  var ultimoNome = 'Pedro';

  var saudacao =
      'Olá ' + primeiroNome + ' ' + ultimoNome + ', seja muito bem vindo';
  print(saudacao);

  var saudacao2 = 'Olá $primeiroNome $ultimoNome, seja muito bem vindo';
  print(saudacao2);

  print('Olá ${primeiroNome.toLowerCase()}');

  print('Soma de 2+2 é ${2 + 2}');

  var paciente = 'João Pedro|30|Especialista Dart e Flutter|SP';

  // Transformar a string em lista, usando | com separador
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente); // [João Pedro, 30, Especialista Dart e Flutter, SP]
  // print(dadosPaciente[0]); -> Nome
  // print(dadosPaciente[1]); -> Idade
  // print(dadosPaciente[2]); -> Profissão
  // print(dadosPaciente[3]); -> Sigla estado

  for (var dado in dadosPaciente) {
    print(dado);
  }

  // Warning: Avoid using `forEach` with a function literal.
  dadosPaciente.forEach((dado) => print(dado));

  var pacientes = [
    'João Pedro|30|Estudante|SP',
    'Rodrigo Rahman|30|Especialista Dart e Flutter|SP',
    'Guilherme Rahman Silva|30|Analista|SP',
    'João Almeida|30|Analista|SP'
  ];

  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');
    print('${nomes.first} ${nomes.last}'); // Primeiro nome e Último nome
  }
}
