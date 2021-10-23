import 'package:dart_async/repository_pattern/repositories/cidade_repository.dart';
import 'package:dart_async/repository_pattern/repositories/user_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();
  var userRepository = UserRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);

    var user = await userRepository.findUser(1);
    print(user?.name ?? 'Usuário não encontrado');

    // if (user != null) {
    //   print(user.name);
    // } else {
    //   print('Usuário não encontrado');
    // }
  } catch (e) {
    print('Erro ao buscar cidade');
  }
}
