import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';

import 'package:miniproject_traveller/Domain/search/search_service.dart';
import 'package:miniproject_traveller/Infrastructure/apikey.dart';

import '../../Domain/search/models/place_details/nearby_places/nearby_places.dart';

@LazySingleton(as: SearchService)
class SearchServiceImplementation implements SearchService {
  @override
  Future<Either<MainFailure, NearbyPlaces>> getPlaceDetails(
      String placeName) async {
    final dio = Dio();
    final response = await dio.get(
      'https://maps.googleapis.com/maps/api/place/textsearch/json',
      queryParameters: {
        'key': apiKey,
        'query': 'tourist attractions in $placeName',
      },
    );

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final listData = NearbyPlaces.fromJson(response.data);

        log(listData.results.toString());

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
