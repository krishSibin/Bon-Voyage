import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniproject_traveller/Application/Home/home_bloc.dart';

import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';
import 'package:miniproject_traveller/Presentation/home/sub_pages/image_view_page.dart';

class HelpLineTabWidget extends StatelessWidget {
  final String place;
  const HelpLineTabWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearHospitals(placeName: place));
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearPoliceStations(placeName: place));
    });
    return Scaffold(
        body: ListView(
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final response = state.hospitalList;
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
            final photoWidth = outp.map((e) {
              return e?.width.toString();
            }).toList();
            final photoHeight = outp.map((e) {
              return e?.height.toString();
            }).toList();

            final desc = response.map((e) {
              return e.vicinity;
            }).toList();

            log(desc.toString());

            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.isError) {
              return const Center(child: Text('Error'));
            } else if (response.isEmpty) {
              return const Center(
                child: Text('No List'),
              );
            } else {
              return ImageListView(
                imgHeight: photoHeight,
                descriptionList: desc,
                imgWidth: photoWidth,
                titleList: res,
                title: 'Nearby Hospitals',
                imgList: photoRef,
              );
            }
          },
        ),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final response = state.policeStationList;
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
            final photoWidth = outp.map((e) {
              return e?.width.toString();
            }).toList();

            final desc = response.map((e) {
              return e.vicinity;
            }).toList();
            final photoHeight = outp.map((e) {
              return e?.height.toString();
            }).toList();
            log(desc.toString());

            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.isError) {
              return const Center(child: Text('Error'));
            } else if (response.isEmpty) {
              return const Center(
                child: Text('No List'),
              );
            } else {
              return ImageListView(
                imgHeight: photoHeight,
                descriptionList: desc,
                imgWidth: photoWidth,
                titleList: res,
                title: 'Nearby PoliceStation',
                imgList: photoRef,
              );
            }
          },
        ),
      ],
    ));
  }
}

class ImageListView extends StatelessWidget {
  final String title;
  final List<String?> imgList;
  final List<String?> titleList;
  final List<String?> imgWidth;
  final List<String?> imgHeight;
  final List<String?> descriptionList;
  const ImageListView({
    required this.imgHeight,
    required this.imgWidth,
    required this.imgList,
    required this.title,
    super.key,
    this.titleList = const [],
    required this.descriptionList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        kheight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                5,
                (index) => OpenContainer(
                      closedBuilder: (context, _) {
                        return Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          margin: const EdgeInsets.only(left: 10),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    // top10Places[index],
                                    // 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=${imgWidth[index]}&photoreference=${imgList[index]}&key=$apiKey',
                                    'https://maps.googleapis.com/maps/api/place/photo?photoreference=${imgList[index]}&maxheight=${imgHeight[index]}&maxwidth=${imgWidth[index]}&key=$apiKey'),
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 20,
                              padding: const EdgeInsets.only(left: 70),
                              width: double.infinity,
                              color: Colors.black.withOpacity(.2),
                              child: Text(
                                titleList[index] ?? 'NO name',
                                style: TextStyle(color: kwhite, fontSize: 18),
                              ),
                            ),
                          ),
                        );

                        // return Stack()
                      },
                      openBuilder: (context, _) {
                        return ImageViewPage(
                          description: descriptionList[index],
                          placeName: titleList[index],
                          imgUrl:
                              'https://maps.googleapis.com/maps/api/place/photo?photoreference=${imgList[index]}&maxheight=${imgHeight[index]}&maxwidth=${imgWidth[index]}&key=$apiKey',
                        );
                      },
                    )),
          ),
        ),
      ],
    );
  }
}
