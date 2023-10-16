import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';
import 'package:miniproject_traveller/Domain/home/home_service_places.dart';
import 'package:miniproject_traveller/Domain/search/models/place_details/nearby_places/nearby_places.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';

@LazySingleton(as: HomeServiceBestPlaces)
class HomeRepoBestPlacesImpl implements HomeServiceBestPlaces {
  @override
  Future<Either<MainFailure, NearbyPlaces>> getBestPlaces(
      String placeName) async {
    final dio = Dio();

    final response = await dio.get(
      'https://maps.googleapis.com/maps/api/place/textsearch/json',
      queryParameters: {
        'query': 'top rated places to visit in $placeName',
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
}
