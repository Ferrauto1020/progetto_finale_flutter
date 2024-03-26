import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'adults') required int adults,
    @JsonKey(name: 'mq') required int mq,
    @JsonKey(name: 'price_for_night') required int priceForNight,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}