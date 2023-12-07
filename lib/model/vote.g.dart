// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vote _$VoteFromJson(Map<String, dynamic> json) => Vote(
      userId: json['userId'] as int?,
      vote: json['vote'] as bool?,
    );

Map<String, dynamic> _$VoteToJson(Vote instance) => <String, dynamic>{
      'userId': instance.userId,
      'vote': instance.vote,
    };
