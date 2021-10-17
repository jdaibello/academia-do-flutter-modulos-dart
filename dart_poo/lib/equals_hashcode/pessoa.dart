/*
  Pessoa
    nome: Rodrigo
    email: rodrigorahman@gmail.com
  
  Pessoa
    nome: Guilherme
    email: guilherme@gmail.com
*/

class Pessoa {
  String nome;
  String email;
  String telefone;

  Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
  });

  /*
    @override
    bool operator ==(Object other) {
      if (identical(this, other)) {
        return true;
      }

      if (other is Pessoa) {
        if (other.nome == nome) {
          if (other.email == email) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      } else {
        return false;
      }
    }
  */

  /*
    @override
    bool operator ==(Object other) {
      if (identical(this, other)) {
        return true;
      }

      var isEquals = false;

      if (other is Pessoa) {
        if (other.nome == nome) {
          if (other.email == email) {
            isEquals = true;
          }
        }
      }
      return isEquals;
    }
  */

  /*
    @override
    bool operator ==(Object other) {
      if (identical(this, other)) return true;
      return other is Pessoa && other.nome == nome && other.email == email;
    }
  */

  /*
    @override
    int get hashCode {
      return nome.hashCode ^ email.hashCode;
    }
  */

  // equals com o plugin Dart Data Class Genertor
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pessoa &&
        other.nome == nome &&
        other.email == email &&
        other.telefone == telefone;
  }

  // hashCode com o plugin Dart Data Class Genertor
  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;

  /* 
    @override
    String toString() {
      return '''
        Pessoa
          nome: $nome,
          email: $email,
          telefone: $telefone
      ''';
    }
  */

  // toString com o plugin Dart Data Class Genertor
  @override
  String toString() =>
      'Pessoa(nome: $nome, email: $email, telefone: $telefone)';
}
