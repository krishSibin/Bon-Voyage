import 'package:dartz/dartz.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';

import '../search/models/place_details/nearby_places/nearby_places.dart';

abstract class HomeServicePolice {
  Future<Either<MainFailure, NearbyPlaces>> getPoliceStation(String placeName);
}
