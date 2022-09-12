import 'dart:convert';

import 'package:bigapp/core/params/login_param.dart';
import 'package:bigapp/core/resources/login_api_services.dart';
import 'package:bigapp/data/exceptions/exceptions.dart';
import 'package:bigapp/data/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginProviders {
  APIServices apiServices = APIServices();

  Future<LoginModel> loginProcess(LoginParams params) async {
    http.Response response = await http.post(apiServices.getLoginUrl, body: {
      "password": params.passwordUser,
      "kode_driver": params.userName,
    });

    final statusCode = response.statusCode;
    final String jsonBody = response.body;

    if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
      throw FetchDataException(messageError: "Error Request : $statusCode");
    }

    var result = jsonDecode(jsonBody);
    return LoginModel.fromJson(result);
  }
}
