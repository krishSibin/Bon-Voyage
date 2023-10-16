import 'package:flutter/material.dart';
import 'package:miniproject_traveller/Core/constants.dart';

class HotelViewScreen extends StatelessWidget {
  final String imgUrl;
  final String hotelName;
  // final String hotelDetails;

  const HotelViewScreen({
    required this.imgUrl,
    super.key,
    required this.hotelName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                shadowColor: Colors.black,
                child: Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imgUrl),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            kheight60,
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                hotelName,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, top: 30),
            //   child: Text(
            //     hotelDetails,
            //     style: const TextStyle(fontSize: 20),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
