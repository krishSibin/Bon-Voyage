part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getNearbyRestaurents({required String placeName}) =
      GetNearbyRestaurents;
  const factory HomeEvent.getNearbyHotels({required String placeName}) =
      GetNearbyHotels;

  const factory HomeEvent.getNearbyBestPlaces({required String placeName}) =
      GetNearbyBestPlaces;

  const factory HomeEvent.getNearHospitals({required String placeName}) =
      GetNearHospitals;

  const factory HomeEvent.getNearPoliceStations({required String placeName}) =
      getNearPoliceStations;
}
