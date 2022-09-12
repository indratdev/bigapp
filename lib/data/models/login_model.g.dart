// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      status: json['status'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      token: json['token'] as String,
      module: json['module'] as List<dynamic>?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'username': instance.username,
      'role': instance.role,
      'token': instance.token,
      'module': instance.module,
    };
