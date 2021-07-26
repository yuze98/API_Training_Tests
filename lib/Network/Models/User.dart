import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  String image;
  String phone;
  String email;
  String lang;
  User({this.id, this.name, this.image, this.email, this.lang, this.phone});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
