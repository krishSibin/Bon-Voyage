import 'package:dartz/dartz.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';
import 'package:miniproject_traveller/Domain/search/models/place_details/nearby_places/nearby_places.dart';

abstract class SearchService {
  Future<Either<MainFailure, NearbyPlaces>> getPlaceDetails(String placeName);
}
