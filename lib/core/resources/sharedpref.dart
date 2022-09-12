import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  late SharedPreferences pref;

  setToken(String token) async {
    pref = await SharedPreferences.getInstance();
    pref.setString('token', token);
  }

  Future<String> getToken() async {
    pref = await SharedPreferences.getInstance();

    String stringValue = pref.getString('token') ?? "";

    return stringValue;
  }
}
