import 'package:json_annotation/json_annotation.dart';
import 'package:pulse/model/user.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  Comment({this.id, this.user, this.text, this.replies});

  String? id;
  User? user;
  String? text;
  List<Comment>? replies;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
