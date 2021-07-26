import 'package:api_training/Network/Models/BrandModel.dart';
import 'package:api_training/Network/Models/InfoModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'GetBrandsResponse.g.dart';

@JsonSerializable()
class GetBrandsResponse {
  int status;
  String message;
  List<BrandModel> brandModel;

  GetBrandsResponse({this.status, this.brandModel, this.message});

  factory GetBrandsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBrandsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetBrandsResponseToJson(this);
}
