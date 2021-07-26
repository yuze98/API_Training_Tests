// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RegisterRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) {
  return RegisterRequest(
    phone: json['phone'] as String,
    password: json['password'] as String,
    image: json['image'] as String,
    email: json['email'] as String,
    fireBaseToken: json['fireBaseToken'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
      'fireBaseToken': instance.fireBaseToken,
    };
