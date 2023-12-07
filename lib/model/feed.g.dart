// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      id: json['id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      vote: (json['vote'] as List<dynamic>?)
          ?.map((e) => Vote.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookmark: (json['bookmark'] as List<dynamic>?)
          ?.map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: json['time'] as String?,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'vote': instance.vote,
      'bookmark': instance.bookmark,
      'time': instance.time,
    };
