void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(2);
  numerosLista.add(1);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(2);
  numerosSet.add(1);
  print(numerosSet); // {1, 2, 3, null}

  print('.toSet()');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('.difference()');
  // Mostra as diferenças
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  print('.union()');
  // Junta numeros1 com numeros2
  print(numeros1.union(numeros2));

  print('.intersection()');
  // Mostrar os elementos que tem nos dois sets
  print(numeros1.intersection(numeros2));

  var nomes1 = {'João', 'Rodrigo', 'José'};
  var nomes2 = {'Guilherme', 'João', 'Joaquim'};
  print(nomes1.intersection(nomes2));

  print('.lookup()');
  // Verifica se o elemento existe no set
  print(numeros1.lookup(99));
  print(nomes1.lookup('João'));

  // nomes1[0] -> lista
  nomes1.elementAt(0); // -> set
}
