import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniproject_traveller/Application/Search/search_bloc.dart';
import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';

import 'package:miniproject_traveller/Infrastructure/apikey.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<String> dummyImageList = [
  'https://images.unsplash.com/photo-1579616075377-696d66a6e373?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1966&q=80',
  'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1474&q=80',
  'https://images.unsplash.com/photo-1575036578784-094bf35ecff9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1420&q=80'
];

class ScreenSearchResult extends StatelessWidget {
  ScreenSearchResult({super.key, required this.indexNew});
  final _controller = PageController();
  final int indexNew;
  @override
  Widget build(BuildContext context) {
    log(indexNew.toString());
    return Scaffold(
        body: Stack(
      children: [
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            final response = state.placeList;
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

            log(photoRef.toString());
            log(photoWidth.toString());
            return PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: List.generate(indexNew, (index) {
                if (indexNew.isNegative || indexNew == 0) {
                  log('index new value is zero or neg value:$indexNew');
                  return Text('Error');
                } else {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://maps.googleapis.com/maps/api/place/photo?maxwidth=${photoWidth[index]}&photoreference=${photoRef[index]}&key=$apiKey'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: const [0.3, 0.7],
                          colors: [
                            kblack.withOpacity(.9),
                            kblack.withOpacity(.2),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 52),
                            child: Text(
                              'Day ${index + 1}',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                          kheight10,
                          Padding(
                            padding: EdgeInsets.only(bottom: 70, left: 50),
                            child: Text(
                              res[index] ?? 'No Name',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
              }),
            );
          },
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 10),
              child: SmoothPageIndicator(
                // axisDirection: Axis.vertical,
                controller: _controller,
                count: indexNew,
                effect: ExpandingDotsEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: Colors.white.withOpacity(.2),
                  dotColor: Colors.white.withOpacity(.3),
                ),
              ),
            ))
      ],
    ));
  }
}
