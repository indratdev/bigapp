abstract class ExceptionCustom implements Exception {
  String messageError;

  ExceptionCustom({required this.messageError});

  @override
  String toString() => messageError;
}

class LoginException extends ExceptionCustom {
  LoginException({super.messageError = "Login Gagal"});
}

class LoginFailure extends ExceptionCustom {
  LoginFailure({super.messageError = "User tidak ditemukan !"});
}
