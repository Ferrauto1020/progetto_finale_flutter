import 'package:esame_ferrauto_giuseppe/common/widgets/hotel_image.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotels_page/hotels_cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';
import 'package:esame_ferrauto_giuseppe/model/hotel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HotelItem extends StatelessWidget {
  final Hotel hotel;

  const HotelItem({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: HotelImage(
        imageUrl: hotel.mainPhoto,
        size: 50,
      ),
      title: Text(hotel.name + "\n" + hotel.description + "\n"),
      onTap: () => context.go('/details/${hotel.id}'),
      trailing: IconButton(
        onPressed: () => context.read<HotelsCubit>().removeHotel(hotel),
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
