import 'dart:convert';

import 'package:bigapp/core/params/login_param.dart';
import 'package:bigapp/core/resources/login_api_services.dart';
import 'package:bigapp/data/exceptions/exceptions.dart';
import 'package:bigapp/data/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginProviders {
  APIServices apiServices = APIServices();

  Future<LoginModel> loginProcess(LoginParams params) async {
    LoginModel resultLogin =
        LoginModel(status: 0, username: "", role: "", token: "");
    http.post(apiServices.getLoginUrl, body: {
      "password": params.passwordUser,
      "kode_driver": params.userName,
    }).then((response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> body = (jsonDecode(response.body));
        resultLogin = LoginModel.fromJson(body);
      }

      if (response.statusCode == 404) {
        throw Exception(LoginFailure);
      }
    });
    return resultLogin;
  }
}

  // Future fetchNewsList({String category = ''}) async {
  //   var queryParam = {
  //     'country': Constant.countryID,
  //     'apiKey': _apiKey,
  //     'category': category
  //   };
  //   var url = Uri.parse(
  //       'https://newsapi.org/v2/top-headlines?country=id&apiKey=f507ea00fb1b4d039c77d1ffabe378e8');
  //   // var baseUrl = 'https://newsapi.org';
  //   // Uri url = Uri.https(baseUrl, '/v2/top-headlines', queryParam);
  //   var response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     Map<String, dynamic> json = (jsonDecode(response.body));
  //     // List<dynamic> body = json
  //     // ['articles']);
  //     print(json);
  //     // var body = json['articles'];

  //     // List<NewsModel> artikel = body.map((e) => NewsModel.fromJson(e)).toList();

  //     // return NewsModel.fromJson(json);
  //     return NewsModel.fromJson(json).articles;

  //     // return NewsModel.fromJson(response.body).articles;
  //   } else {
  //     throw Exception('Failed to load data news');
  //   }
  // }
// }/
