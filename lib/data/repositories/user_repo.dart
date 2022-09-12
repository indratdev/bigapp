import 'package:bigapp/core/params/login_param.dart';
import 'package:bigapp/data/models/login_model.dart';

import '../../core/resources/login_providers.dart';

class UserRepositories {
  final loginProvider = LoginProviders();

  Future<LoginModel> loginUserRepo({required LoginParams params}) async {
    return await loginProvider.loginProcess(params);
  }
}
