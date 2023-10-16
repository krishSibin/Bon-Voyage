part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getTouristPlaces({required String placeName}) =
      GetTouristPlaces;
  const factory SearchEvent.getTop10Places() = GetTop10Places;
  const factory SearchEvent.getBeachesResult() = GetBeachesResult;
  const factory SearchEvent.getViewPointsResult() = GetViewPointsResult;
}
