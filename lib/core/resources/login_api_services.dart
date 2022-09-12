import '../utils/constants.dart';

class APIServices {
  final String loginUrl = "login/loginDriver";
  final String listPengirimanUrl = "Driver/listBursaPengirimanDriver";
  final String detailPengirimanUrl = "Driver/detail_pengiriman";

  Uri get getLoginUrl {
    return Uri.parse(baseUrl + loginUrl);
  }

  Uri get getListPengirimannUrl {
    return Uri.parse(baseUrl + listPengirimanUrl);
  }
}
