import 'package:json_annotation/json_annotation.dart';
import 'package:pulse/model/bookmark.dart';
import 'package:pulse/model/user.dart';
import 'package:pulse/model/vote.dart';

part 'feed.g.dart';

@JsonSerializable()
class Feed {
  Feed({
    this.id,
    this.user,
    this.title,
    this.description,
    this.image,
    this.vote,
    this.bookmark,
    this.time,
  });

  String? id;
  User? user;
  String? title;
  String? description;
  String? image;
  List<Vote>? vote;
  List<Bookmark>? bookmark;
  String? time;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
