import 'package:esame_ferrauto_giuseppe/common/widgets/hotel_image.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotel_detail_page/hotel_cubit/hotel_cubit.dart';
import 'package:flutter/material.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotel_detail_page/widgets/info_row.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HotelDetailPage extends StatelessWidget {
  const HotelDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HotelCubit>().state;
    final hotel = state.hotel;

    if (state.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.hasError) {
      return const Scaffold(
        body: Center(
          child: Text('Errore nella richiesta'),
        ),
      );
    }

    if (hotel == null) {
      return const Scaffold(
        body: Center(
          child: Text('Hotel non trovato'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          InfoRow(
            label: 'Hotel',
            value: hotel.name,
          ),
          const Divider(),
          InfoRow(
            label: 'Descrizione',
            value: hotel.address,
          ),
          const Divider(),
          const Divider(),
          ...hotel.rooms
              .map((room) => InfoRow(
                    label: 'Room',
                    value: room.image, 
                  ))
              .toList(),
          const Divider(),
        ],
      ),
    );
  }
}
