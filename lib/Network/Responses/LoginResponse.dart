import 'package:json_annotation/json_annotation.dart';
import 'package:api_training/Network/Models/AccountModel.dart';
part 'LoginResponse.g.dart';

@JsonSerializable()
class LoginResponse {
  int status;
  String message;
  AccountModel account;

  LoginResponse({this.status, this.account, this.message});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
