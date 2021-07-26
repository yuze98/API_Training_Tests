// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return AccountModel(
    apiToken: json['apiToken'] as String,
    id: json['id'] as int,
    phone: json['phone'] as String,
    message: json['message'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AccountModelToJson(AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'apiToken': instance.apiToken,
      'phone': instance.phone,
      'message': instance.message,
      'user': instance.user,
    };
