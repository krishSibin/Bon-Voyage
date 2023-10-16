//import 'dart:developer';

// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:animations/animations.dart';
//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import 'package:miniproject_traveller/Application/Search/search_bloc.dart';

import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';
import 'package:miniproject_traveller/Presentation/home/home.dart';

import 'package:miniproject_traveller/Presentation/home/sub_pages/image_view_page.dart';
import 'package:miniproject_traveller/Presentation/search/sub_pages/date_selection_page.dart';
import 'package:miniproject_traveller/Presentation/search/sub_pages/search_result.dart';
import 'package:miniproject_traveller/Presentation/splash_screen/screen_splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

var searchController = TextEditingController();
bool searchPlace = false;
bool searchRest = false;
bool searchHotel = false;
bool searchHospital = false;
bool searchPolice = false;

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  void initState() {
    getData(context);
    super.initState();
  }

  //late String placeName;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getTop10Places());
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getBeachesResult());
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getViewPointsResult());
    });

    return Scaffold(
      body: ListView(
        children: [
          SearchWidget(),
          SearchButtonWidget(),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              final response = state.top10Places;
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
                  indexValue: 10,
                  descriptionList: desc,
                  imgWidth: photoWidth,
                  titleList: res,
                  title: 'Top 10 Places to Visit',
                  imgList: photoRef,
                );
              }
            },
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              final response = state.beachList;
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
                  indexValue: 10,
                  descriptionList: desc,
                  imgWidth: photoWidth,
                  titleList: res,
                  title: 'Top 10 Places to Visit',
                  imgList: photoRef,
                );
              }
            },
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              final response = state.viewPointList;
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
                  indexValue: 10,
                  imgWidth: photoWidth,
                  titleList: res,
                  title: 'Top 10 Places to Visit',
                  imgList: photoRef,
                  descriptionList: desc,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

Future<void> getData(context) async {
  final _sharep = await SharedPreferences.getInstance();
  placeName = _sharep.getString('placeName');
  log(placeName.toString());
  noDays = _sharep.getInt('noDays');
  locConfirmed = _sharep.getBool('locConfirmed');
  // final intDays = int.parse(noDays ?? '0');
  log(noDays.toString());

  log('before bloc calling in search');
  // BlocProvider.of<SearchBloc>(context)
  //     .add(SearchEvent.getTouristPlaces(placeName: placeName!));

  log('after bloc calling in search');
  if (locConfirmed == true) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return ScreenSearchResult(
          indexNew: 4,
        );
      },
    ));
  }
}

class ImageListView extends StatelessWidget {
  final String title;
  final List<String?> imgList;
  final List<String?> titleList;
  final List<String?> imgWidth;
  final List<String?> descriptionList;
  final int indexValue;
  const ImageListView({
    required this.indexValue,
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
                indexValue,
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
                                  'https://maps.googleapis.com/maps/api/place/photo?maxwidth=${imgWidth[index]}&photoreference=${imgList[index]}&key=$apiKey',
                                ),
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
                      },
                      openBuilder: (context, _) {
                        return ImageViewPage(
                          description: descriptionList[index],
                          placeName: titleList[index],
                          imgUrl:
                              'https://maps.googleapis.com/maps/api/place/photo?maxwidth=${imgWidth[index]}&photoreference=${imgList[index]}&key=$apiKey',
                        );
                      },
                    )),
          ),
        ),
      ],
    );
  }
}

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120, right: 120, top: 15),
      child: Card(
        elevation: 8,
        child: SizedBox(
            height: 40,
            width: 35,
            child: MaterialButton(
              color: Colors.blue,
              onPressed: () async {
                if (searchController.text.isEmpty) {
                  final snackbar = SnackBar(
                    duration: const Duration(seconds: 3),
                    dismissDirection: DismissDirection.horizontal,
                    backgroundColor: Colors.black.withOpacity(.5),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    behavior: SnackBarBehavior.floating,
                    content: Column(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 150,
                          child: LottieBuilder.network(
                              'https://assets1.lottiefiles.com/packages/lf20_7zGDp5.json'),
                        ),
                        const Text(
                          'No Place Selected',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    margin:
                        const EdgeInsets.only(bottom: 300, left: 50, right: 50),
                    closeIconColor: kwhite,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  return;
                }

                Home.currentPlaceNotifier.value = searchController.text;
                //    final placeName = Home.currentPlaceNotifier.value;
                log('controller field ${searchController.text}');
                log(Home.currentPlaceNotifier.value);
                BlocProvider.of<SearchBloc>(context).add(
                    SearchEvent.getTouristPlaces(
                        placeName: searchController.text));

                searchPlace = false;
                log('search field value $searchPlace inside button action');

                searchRest = false;
                log('search field value $searchRest inside button action');

                searchHotel = false;
                log('search field value $searchHotel inside button action');
                searchHospital = false;
                searchPolice = false;
                // Obtain shared preferences.
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.setString('placeName', searchController.text);

                // BlocProvider.of<HomeBloc>(context).add(
                //     HomeEvent.getNearbyBestPlaces(
                //         placeName: searchController.text));

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ScreenDateSelection();
                  },
                ));
              },
              child: const Text('Search'),
            )),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      height: 50,
      child: TextFormField(
        controller: searchController,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(top: 5, left: 20),
            hintText: 'Search Places.',
            border: OutlineInputBorder()),
        onFieldSubmitted: (value) {
          print(value);
        },
      ),
    );
  }
}
