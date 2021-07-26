// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'InfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return InfoModel(
    privacy: json['privacy'] as String,
    aboutUs: json['aboutUs'] as String,
    phone: (json['phone'] as List)?.map((e) => e as String)?.toList(),
    emails: (json['emails'] as List)?.map((e) => e as String)?.toList(),
    policyTerms: json['policyTerms'] as String,
  );
}

Map<String, dynamic> _$InfoModelToJson(InfoModel instance) => <String, dynamic>{
      'aboutUs': instance.aboutUs,
      'policyTerms': instance.policyTerms,
      'privacy': instance.privacy,
      'emails': instance.emails,
      'phone': instance.phone,
    };
