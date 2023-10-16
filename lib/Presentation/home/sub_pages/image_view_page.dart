import 'package:flutter/material.dart';
import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';

class ImageViewPage extends StatelessWidget {
  final String imgUrl;
  final String? placeName;
  final String? description;
  const ImageViewPage(
      {required this.imgUrl,
      super.key,
      required this.placeName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl),
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
            kheight10,
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                placeName ?? 'No Name',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            kheight60,
            // Padding(
            //   padding: EdgeInsets.only(left: 50, bottom: 60),
            //   child: Text(
            //     description ?? 'No Description',
            //     style: TextStyle(color: Colors.white, fontSize: 20),
            //   ),
            // ),
          ],
        ),
      ),
    ));
  }
}
