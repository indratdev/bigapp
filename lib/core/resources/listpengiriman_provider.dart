import 'dart:io';

import 'package:bigapp/core/params/listpengiriman_param.dart';
import 'package:bigapp/core/resources/login_api_services.dart';
import 'package:bigapp/data/exceptions/exceptions.dart';
import 'package:http/http.dart' as http;

class ListPengirimanProviders {
  APIServices apiServices = APIServices();
  listPengirimanProcess(ListPengirimanParam params) async {
    http.Response response =
        await http.post(apiServices.getListPengirimannUrl, headers: {
      // "Authorization": "Bearer ${params.Authorization}",
      // 'Content-Type': 'application/json',
      // 'Accept': 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer ${params.Authorization}',
    }, body: {
      "Limit": params.Limit,
      "Offset": params.Offset,
      "Param": params.Param,
    });

    final statusCode = response.statusCode;
    final String jsonBody = response.body;

    if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
      print("status code : $statusCode");
      throw FetchDataException(messageError: "Error Request : $statusCode");
    }

    // var result = jsonDecode(jsonBody);
    // return LoginModel.fromJson(result);
  }
}
