import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

//import 'package:rive/rive.dart';

//import 'package:miniproject_traveller/Domain/search/models/place_details/nearby_places/nearby_places.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 500,
          height: 500,
          child: LottieBuilder.network(
              'https://assets10.lottiefiles.com/packages/lf20_m6cuL6.json')),
    );
  }
}
