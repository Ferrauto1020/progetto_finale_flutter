import 'dart:convert';
import 'package:esame_ferrauto_giuseppe/model/hotelDetail.dart';
import 'package:esame_ferrauto_giuseppe/model/hotel.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotel_detail_page/hotel_cubit/hotel_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class HotelCubit extends Cubit<HotelState> {
  HotelCubit() : super(const HotelState());

  void getHotel(int hoteltId) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    try {
      final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/andrea689/flutter_course/main/exams/hotels/hotel_details/$hoteltId',
      ));

      if (response.statusCode == 200) {
        final hotelDetail = HotelDetail.fromJson(jsonDecode(response.body));

        emit(state.copyWith(
          isLoading: false,
          hotel: hotelDetail,
        ));
      } else {
        throw Exception('Failed to load hotel');
      }
    } catch (e, s) {
      print(e);
      print(s);
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
    }
  }
}
