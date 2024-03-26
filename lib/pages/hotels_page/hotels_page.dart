import 'package:esame_ferrauto_giuseppe/pages/hotels_page/hotels_cubit/hotels_cubit.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotels_page/widgets/hotel_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
        actions: [
          IconButton(
            onPressed: () => context.read<HotelsCubit>().toggleOrder(),
            icon: const Icon(Icons.sort_by_alpha),
          ),
        ],
      ),
      body: const HotelsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HotelsCubit>().getHotels(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
