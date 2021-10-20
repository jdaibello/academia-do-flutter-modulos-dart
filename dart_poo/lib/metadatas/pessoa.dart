import 'dart:io';

import 'package:dart_poo/metadatas/fazer.dart';

@Fazer(
  quem: 'João Pedro na classe',
  oque: 'Tentando ler a anotação da classe',
)
@gzip
class Pessoa {
  @Fazer(
    quem: 'João Pedro no atributo',
    oque: 'Tentando ler a anotação do atributo',
  )
  String? nome;

  @Fazer(
    quem: 'João Pedro no método',
    oque: 'Tentando ler a anotação do método',
  )
  void fazerAlgo() {}
}
