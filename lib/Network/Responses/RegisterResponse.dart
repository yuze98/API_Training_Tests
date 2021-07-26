import 'package:json_annotation/json_annotation.dart';
import 'package:api_training/Network/Models/AccountModel.dart';
part 'RegisterResponse.g.dart';

@JsonSerializable()
class RegisterResponse {
  int status;
  String message;
  AccountModel account;

  RegisterResponse({this.status, this.account, this.message});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
