import 'package:json_annotation/json_annotation.dart';
import 'User.dart';
part 'InfoModel.g.dart';

@JsonSerializable()
class InfoModel {
  String aboutUs;
  String policyTerms;
  String privacy;
  List<String> emails;
  List<String> phone;
  InfoModel(
      {this.privacy, this.aboutUs, this.phone, this.emails, this.policyTerms});
  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$InfoModelToJson(this);
}
