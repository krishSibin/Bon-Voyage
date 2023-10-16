import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';
import 'package:miniproject_traveller/Domain/home/home_service_rest.dart';
import 'package:miniproject_traveller/Domain/search/models/place_details/nearby_places/nearby_places.dart';

import 'package:miniproject_traveller/Infrastructure/apikey.dart';

@LazySingleton(as: HomeServiceRestaurents)
class HomeRepoRestaurentsImpl implements HomeServiceRestaurents {
  late final double lati;
  late final double lngi;
  @override
  Future<Either<MainFailure, NearbyPlaces>> getRestaurents(
      String placeName) async {
    final dio = Dio();

    // try {
    //   final res = await fetchLocationCoordinates(placeName);
    //   log(res.toString());
    //   lati = res['latitude'] ?? 0;
    //   lngi = res['longitude'] ?? 0;

    //   log(lati.toString());
    //   log(lngi.toString());
    // } catch (e) {
    //   log('error fetching coordinates ${e.toString()}');
    // }

    // final response = await dio.get(
    //   'https://maps.googleapis.com/maps/api/place/nearbysearch/json',
    //   queryParameters: {
    //     'location': '$lati,$lngi',
    //     'radius': '500',
    //     'type': 'restaurant',
    //     'key': apiKey,
    //   },
    // );

    final response = await dio.get(
      'https://maps.googleapis.com/maps/api/place/textsearch/json',
      queryParameters: {
        'query': 'best restaurants in $placeName',
        'key': apiKey,
      },
    );

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final listData = NearbyPlaces.fromJson(response.data);

        //   log(listData.results.toString());
        log('inside res function ${listData.results.toString()}');

        return Right(listData);
      } else {
        return const Left(MainFailure.clientFailures());
      }
    } catch (e) {
      log('error ${e.toString()}');

      return const Left(MainFailure.serverFailures());
    }
  }

  // Future<Map<String, double>> fetchLocationCoordinates(String location) async {
  //   // Replace 'YOUR_API_KEY' with your actual Google Maps API key

  //   final dio = Dio();

  //   final response = await dio.get(
  //     'https://maps.googleapis.com/maps/api/place/findplacefromtext/json',
  //     queryParameters: {
  //       'input': location,
  //       'inputtype': 'textquery',
  //       'fields': 'geometry/location',
  //       'key': apiKey,
  //     },
  //     options: Options(
  //         responseType:
  //             ResponseType.json), // Specify the expected response type
  //   );

  //   if (response.statusCode == 200) {
  //     final data = response.data; // No need to decode JSON here

  //     if (data['status'] == 'OK') {
  //       final result = data['candidates'][0];
  //       final location = result['geometry']['location'];

  //       final latitude = location['lat'] as double;
  //       final longitude = location['lng'] as double;

  //       return {'latitude': latitude, 'longitude': longitude};
  //     } else {
  //       throw Exception(
  //           'Failed to fetch location coordinates. Status: ${data['status']}');
  //     }
  //   } else {
  //     throw Exception(
  //         'Failed to fetch location coordinates. Status Code: ${response.statusCode}');
  //   }
  // }
}
