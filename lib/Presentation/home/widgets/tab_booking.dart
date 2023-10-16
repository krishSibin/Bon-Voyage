import 'dart:developer';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniproject_traveller/Application/Home/home_bloc.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';
import 'package:miniproject_traveller/Presentation/home/sub_pages/hotel_view.dart';

class BookingsTabWidget extends StatelessWidget {
  final String place;
  const BookingsTabWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearbyHotels(placeName: place));
    });

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final response = state.hotelList;
        final res = response.map((e) {
          return e.name;
        }).toList();

        final resp = response.map((e) {
          return e.photos;
        }).toList();

        final outp = resp.map((e) {
          return e?[0];
        }).toList();
        final photoRef = outp.map((e) {
          return e?.photoReference;
        }).toList();

        final det = response.map((e) {
          return e.vicinity.toString();
        }).toList();

        log(det.toString());

        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.isError) {
          return const Center(child: Text('ERROR'));
        } else if (state.hotelList.isEmpty) {
          return const Center(child: Text('LIST IS EMPTY'));
        } else {
          return GridView.count(
            childAspectRatio: 2.3 / 3,
            padding: const EdgeInsets.all(3),
            crossAxisSpacing: 20,
            mainAxisSpacing: 1,
            crossAxisCount: 2,
            children: List.generate(
                res.length,
                (index) => OpenContainer(
                      transitionType: ContainerTransitionType.fadeThrough,
                      transitionDuration: const Duration(milliseconds: 700),
                      openElevation: 0,
                      closedElevation: 0,
                      closedBuilder: (context, _) {
                        return Column(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 10,
                              shadowColor: Colors.black,
                              child: Container(
                                width: 190,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      'https://maps.googleapis.com/maps/api/place/photo?photoreference=${photoRef[index]}&maxheight=150&maxwidth=190&key=$apiKey',
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(child: Text(res[index] ?? 'NO NAME')),
                          ],
                        );
                      },
                      openBuilder: (context, _) {
                        return HotelViewScreen(
                          imgUrl:
                              'https://maps.googleapis.com/maps/api/place/photo?photoreference=${photoRef[index]}&maxheight=150&maxwidth=190&key=$apiKey',
                          hotelName: res[index] ?? "NO NAME",
                        );
                      },
                    )),
          );
        }
      },
    );
  }
}
