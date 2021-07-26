// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return RegisterResponse(
    status: json['status'] as int,
    account: json['account'] == null
        ? null
        : AccountModel.fromJson(json['account'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'account': instance.account,
    };
