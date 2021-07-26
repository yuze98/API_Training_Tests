// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetInfoResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetInfoResponse _$GetInfoResponseFromJson(Map<String, dynamic> json) {
  return GetInfoResponse(
    status: json['status'] as int,
    infoModel: json['infoModel'] == null
        ? null
        : InfoModel.fromJson(json['infoModel'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$GetInfoResponseToJson(GetInfoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'infoModel': instance.infoModel,
    };
