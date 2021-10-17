class EnviarEmail {
  bool call(String email) {
    print('Chamando método call');
    return enviar(email);
  }

  bool enviar(String email) {
    print('Chamando método enviar');
    return true;
  }
}
