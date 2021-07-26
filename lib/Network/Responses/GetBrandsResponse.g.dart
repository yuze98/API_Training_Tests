// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetBrandsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBrandsResponse _$GetBrandsResponseFromJson(Map<String, dynamic> json) {
  return GetBrandsResponse(
    status: json['status'] as int,
    brandModel: (json['brands'] as List)
        ?.map((e) =>
            e == null ? null : BrandModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$GetBrandsResponseToJson(GetBrandsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'brands': instance.brandModel,
    };
