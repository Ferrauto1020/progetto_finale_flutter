import 'package:esame_ferrauto_giuseppe/model/hotelDetail.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_state.freezed.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState({
    HotelDetail? hotel,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _HotelState;
}
