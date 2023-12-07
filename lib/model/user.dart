import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  User({this.name, this.image, this.bio, this.isOnline, this.hours});

  String? name;
  String? image;
  String? bio;
  bool? isOnline;
  String? hours;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
