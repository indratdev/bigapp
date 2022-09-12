import 'package:bigapp/core/params/listpengiriman_param.dart';
import 'package:bigapp/core/params/login_param.dart';
import 'package:bigapp/core/resources/listpengiriman_provider.dart';
import 'package:bigapp/core/resources/sharedpref.dart';
import 'package:bigapp/data/models/login_model.dart';

import '../../core/resources/login_providers.dart';

class UserRepositories {
  final loginProvider = LoginProviders();
  final listPengirimanProviders = ListPengirimanProviders();
  final SharedPref sharedPref = SharedPref();

  Future<LoginModel> loginUserRepo({required LoginParams params}) async {
    return await loginProvider.loginProcess(params);
  }

  setToken(String token) {
    return sharedPref.setToken(token);
  }

  Future<String> getToken() async {
    return await sharedPref.getToken();
  }

  listPengirimanRepo({required ListPengirimanParam params}) async {
    listPengirimanProviders.listPengirimanProcess(params);
  }
}
