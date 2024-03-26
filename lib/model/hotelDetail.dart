import 'package:esame_ferrauto_giuseppe/model/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotelDetail.freezed.dart';
part 'hotelDetail.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class HotelDetail with _$HotelDetail {
  const factory HotelDetail({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'rooms') required List<Room> rooms,
  }) = _HotelDetail;

  factory HotelDetail.fromJson(Map<String, dynamic> json) =>
      _$HotelDetailFromJson(json);
}
