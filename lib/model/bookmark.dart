import "package:json_annotation/json_annotation.dart";

part "bookmark.g.dart";

@JsonSerializable()
class Bookmark {
  Bookmark({this.userId, this.bookmark});
  int? userId;
  bool? bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) =>
      _$BookmarkFromJson(json);
  Map<String, dynamic> toJson() => _$BookmarkToJson(this);
}
