import 'package:esame_ferrauto_giuseppe/pages/hotel_detail_page/hotel_cubit/hotel_cubit.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotels_page/hotels_cubit/hotels_cubit.dart';
import 'package:flutter/material.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotel_detail_page/hotel_detail_page.dart';
import 'package:esame_ferrauto_giuseppe/pages/hotels_page/hotels_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => BlocProvider(
              create: (context) => HotelsCubit()..getHotels(),
              child: const ContactsPage(),
            ),
            routes: [
              GoRoute(
                path: 'details/:hotelId',
                builder: (context, state) {
                  final contactId = int.tryParse(
                    '${state.pathParameters['hotelId']}',
                  );

                  if (contactId == null) {
                    return const Scaffold(
                      body: Center(
                        child: Text('hotelId non valido'),
                      ),
                    );
                  }

                  return BlocProvider(
                    create: (context) => HotelCubit()..getHotel(contactId),
                    child: const HotelDetailPage(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
