import 'package:api_training/Network/Models/InfoModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'GetInfoResponse.g.dart';

@JsonSerializable()
class GetInfoResponse {
  int status;
  String message;
  InfoModel infoModel;

  GetInfoResponse({this.status, this.infoModel, this.message});

  factory GetInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$GetInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetInfoResponseToJson(this);
}
