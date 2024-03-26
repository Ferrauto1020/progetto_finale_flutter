// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HotelToJson(Hotel instance) => <String, dynamic>{
      'id': instance.id,
      'main_photo': instance.mainPhoto,
      'name': instance.name,
      'description': instance.description,
      'vote_average': instance.voteAverage,
    };

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
      id: json['id'] as int,
      mainPhoto: json['main_photo'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main_photo': instance.mainPhoto,
      'name': instance.name,
      'description': instance.description,
      'vote_average': instance.voteAverage,
    };
