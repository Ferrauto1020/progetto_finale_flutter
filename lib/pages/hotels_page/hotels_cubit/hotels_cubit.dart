import 'dart:convert';

import 'package:esame_ferrauto_giuseppe/model/hotel.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotels_page/hotels_cubit/hotels_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class HotelsCubit extends Cubit<HotelsState> {
  HotelsCubit() : super(const HotelsState());

  void getHotels() async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    try {
      final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/andrea689/flutter_course/main/exams/hotels/hotels',
      ));

      if (response.statusCode == 200) {
        final hotels = (jsonDecode(response.body) as List)
            .map((e) => Hotel.fromJson(e))
            .toList();

        emit(state.copyWith(
          isLoading: false,
          hotels: hotels,
        ));
      } else {
        throw Exception('Failed to load hotels');
      }
    } catch (e, s) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));
      print(e);
      print(s);
    }
  }

  void removeHotel(Hotel hotel) async {
    try {
      final response = await http.delete(Uri.parse(
        'https://my-json-server.typicode.com/andrea689/flutter_course/contacts/${hotel.id}',
      ));

      if (response.statusCode == 200) {
        emit(state.copyWith(
          hotels: List<Hotel>.from(state.hotels)..remove(hotel),
        ));
      } else {
        throw Exception('Failed to delete hotel');
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  void toggleOrder() {
    emit(state.copyWith(isAscending: !state.isAscending));
  }
}
