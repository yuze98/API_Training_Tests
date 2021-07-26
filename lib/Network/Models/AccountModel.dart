import 'package:json_annotation/json_annotation.dart';
import 'User.dart';
part 'AccountModel.g.dart';

@JsonSerializable()
class AccountModel {
  int id;
  String apiToken;
  String phone;
  String message;
  User user;
  AccountModel({this.apiToken, this.id, this.phone, this.message, this.user});
  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
