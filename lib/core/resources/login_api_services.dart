import 'package:http/http.dart' as http;

import '../utils/constants.dart';

class APIServices {
  // https://dportv2.development-big.com/api_v1/login/loginDriver
  // https://dportv2.development-big.com/api_v1/Driver/listBursaPengirimanDriver
  // https://dportv2.development-big.com/api_v1/Driver/detail_pengiriman

  final String loginUrl = "login/loginDriver";

  Uri get getLoginUrl {
    return Uri.parse(baseUrl + loginUrl);
  }
}
