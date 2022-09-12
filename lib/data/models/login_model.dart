import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  int status;
  String username, role, token;
  List<dynamic>? module;

  LoginModel({
    required this.status,
    required this.username,
    required this.role,
    required this.token,
    this.module,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
