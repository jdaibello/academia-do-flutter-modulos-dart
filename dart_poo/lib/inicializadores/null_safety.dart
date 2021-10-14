import 'package:dart_poo/inicializadores/cliente.dart';

late final String nome;

//* TOME MUITO CUIDADE COM O
//* LATE E O ! (FORCE NON NULL)
void main() {
  var cliente = Cliente(nome: 'João');
  cliente.nome = 'João';

  //! LateInitializationError: Field 'nome' has already been initialized.
  // cliente.nome = 'Almeida';

  // se não tivesse
  // cliente.nome = 'João';
  // nem
  // cliente.nome = 'Almeida';
  //! LateInitializationError: Field 'nome' has not been initialized.
  print(cliente.nome);

  if (cliente.idade != null) {
    print(cliente.idade!.toDouble());
  }

  nome = 'João Pedro';
  print(nome);
}
