import 'package:esame_ferrauto_giuseppe/pages/hotels_page/hotels_cubit/hotels_cubit.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotels_page/widgets/hotel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotelsList extends StatelessWidget {
  const HotelsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HotelsCubit>().state;
    final hotels = state.sortedHotels;

    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state.hasError) {
      return const Center(
        child: Text('Errore nella richiesta'),
      );
    }

    if (hotels.isEmpty) {
      return const Center(
        child: Text('Nessun contatto trovato'),
      );
    }

    return ListView.separated(
      itemCount: hotels.length,
      itemBuilder: (context, index) => HotelItem(
        hotel: hotels[index],
      ),
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
