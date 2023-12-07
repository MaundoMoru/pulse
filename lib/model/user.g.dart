// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String?,
      image: json['image'] as String?,
      bio: json['bio'] as String?,
      isOnline: json['isOnline'] as bool?,
      hours: json['hours'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'bio': instance.bio,
      'isOnline': instance.isOnline,
      'hours': instance.hours,
    };
