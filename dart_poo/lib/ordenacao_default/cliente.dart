class Cliente implements Comparable<Cliente> {
  String nome;
  String telefone;

  Cliente({
    required this.nome,
    required this.telefone,
  });

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone)';

  @override
  int compareTo(Cliente other) {
    print('Chamando compareTo de $this');
    return nome.compareTo(other.nome);
  }
}
