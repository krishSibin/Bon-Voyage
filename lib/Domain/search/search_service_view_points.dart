import 'package:dartz/dartz.dart';
import 'package:miniproject_traveller/Domain/core/failures/main_failure.dart';

import 'models/place_details/nearby_places/nearby_places.dart';

abstract class SearchServiceViewPoints {
  Future<Either<MainFailure, NearbyPlaces>> getViewPoints();
}
