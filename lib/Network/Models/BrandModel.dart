import 'package:json_annotation/json_annotation.dart';
part 'BrandModel.g.dart';

@JsonSerializable()
class BrandModel {
  String name;
  int id;
  BrandModel({this.name, this.id});
  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
  Map<String, dynamic> toJson() => _$BrandModelToJson(this);
}
