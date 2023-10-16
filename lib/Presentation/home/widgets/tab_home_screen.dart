import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:miniproject_traveller/Application/Home/home_bloc.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';
//import 'package:miniproject_traveller/Infrastructure/apikey.dart';
import 'package:miniproject_traveller/Presentation/home/sub_pages/image_view_page.dart';

class HomePlaceWidget extends StatelessWidget {
  final String place;
  HomePlaceWidget({
    required this.place,
    super.key,
  });

  final _containerTransitionType = ContainerTransitionType.fadeThrough;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearbyBestPlaces(placeName: place));
    });
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final response = state.bestPlaceList;
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

        // final desc = response.map((e) {
        //   return e.vicinity;
        // }).toList();

        log('inside the tab ${res.toString()}');

        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.isError) {
          return const Center(
            child: Text('ERROR'),
          );
        } else if (state.bestPlaceList.isEmpty) {
          return const Center(
            child: Text('LIST IS EMPTY'),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: MasonryGridView.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              itemCount: res.length,
              crossAxisCount: 2,
              itemBuilder: (context, index) {
                return OpenContainer(
                  transitionType: _containerTransitionType,
                  openElevation: 0,
                  closedElevation: 0,
                  transitionDuration: const Duration(milliseconds: 700),
                  closedBuilder: (context, _) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            'https://maps.googleapis.com/maps/api/place/photo?photoreference=${photoRef[index]}&maxheight=${photoHeight[index]}&maxwidth=${photoWidth[index]}&key=$apiKey',

                            fit: BoxFit.fill,
                            // When image is loading from the server it takes some time
                            // So we will show progress indicator while loading
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              );
                            },
                          ),
                          // child: FadeInImage.assetNetwork(
                          //     placeholder: 'assets/img.jpg',
                          //     image:
                          //         'https://maps.googleapis.com/maps/api/place/photo?photoreference=${photoRef[index]}&maxheight=${photoHeight[index]}&maxwidth=${photoWidth[index]}&key=$apiKey'),
                        ),
                        Text(res[index] ?? 'No name'),
                      ],
                    );
                  },
                  openBuilder: (context, _) {
                    return ImageViewPage(
                      placeName: res[index],
                      description: 'something',
                      imgUrl:
                          'https://maps.googleapis.com/maps/api/place/photo?photoreference=${photoRef[index]}&maxheight=${photoHeight[index]}&maxwidth=${photoWidth[index]}&key=$apiKey',
                    );
                  },
                );
              },
            ),
          );
        }
      },
    );
  }
}
