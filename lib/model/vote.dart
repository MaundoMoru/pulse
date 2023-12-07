import "package:json_annotation/json_annotation.dart";

part "vote.g.dart";

@JsonSerializable()
class Vote {
  Vote({this.userId, this.vote});
  int? userId;
  bool? vote;

  factory Vote.fromJson(Map<String, dynamic> json) => _$VoteFromJson(json);
  Map<String, dynamic> toJson() => _$VoteToJson(this);
}
