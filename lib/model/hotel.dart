import 'package:esame_ferrauto_giuseppe/model/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required int id,
    @JsonKey(name: 'main_photo') required String mainPhoto,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'vote_average') required double voteAverage,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
