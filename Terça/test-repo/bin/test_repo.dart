import 'dart:io';

void main() {
  stdout.write('E-mail: ');
  final email = stdin.readLineSync()?.trim() ?? '';

  stdout.write('Senha: ');
  final password = stdin.readLineSync() ?? '';

  if (email.isEmpty || password.isEmpty) {
    print('E-mail e senha são obrigatórios.');
    return;
  }

  final loggedIn = authenticate(email, password);
  print(loggedIn ? 'Login realizado com sucesso!' : 'Credenciais inválidas.');
}

bool authenticate(String email, String password) {
  // Substitua esta lógica por uma chamada segura à API de autenticação.
  return email == 'usuario@email.com' && password == '123456';
}
