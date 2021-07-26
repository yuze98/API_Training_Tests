import 'package:json_annotation/json_annotation.dart';
part 'RegisterRequest.g.dart';

@JsonSerializable()
class RegisterRequest {
  String phone;
  String password;
  String name;
  String email;
  String image;
  String fireBaseToken;

  RegisterRequest(
      {this.phone,
      this.password,
      this.image,
      this.email,
      this.fireBaseToken,
      this.name});

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}
